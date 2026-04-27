#!/usr/bin/env bash
set -euo pipefail
# Repairs an existing Paperclip company by discovering its generated runtime ID from local state or company name.
# Does not require, accept, or hardcode a company ID in repo source.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lib/paperclip-curl-common.sh
source "$DIR/lib/paperclip-curl-common.sh"
need_jq
: > "$OUT_DIR/patch-failures.log"
COMPANY_ID="$(current_company_id)"
echo "Repairing org hierarchy for runtime company ID discovered locally: $COMPANY_ID"
agents_file="$OUT_DIR/current-agents.json"
list_agents_to_file "$COMPANY_ID" "$agents_file"

declare -A ID_BY_SLUG
while IFS=$'\t' read -r slug name id; do
  ID_BY_SLUG["$slug"]="$id"
done < <(jq -r '.agents[] | [.slug, .name, (.id // .agentId // "")] | @tsv' "$MANIFEST" | while IFS=$'\t' read -r slug name _; do
  id="$(agent_id_from_list "$agents_file" "$slug" "$name")"
  if [[ -z "$id" ]]; then
    echo "ERROR: missing agent in Paperclip: $name ($slug)" >&2
    exit 2
  fi
  printf '%s\t%s\t%s\n' "$slug" "$name" "$id"
done)

failures=0
jq -c '.agents[] | select((.paperclipReportsTo // "") != "")' "$MANIFEST" | while read -r agent; do
  child_slug="$(jq -r '.slug' <<<"$agent")"
  child_name="$(jq -r '.name' <<<"$agent")"
  parent_slug="$(jq -r '.paperclipReportsTo' <<<"$agent")"
  child_id="${ID_BY_SLUG[$child_slug]:-}"
  parent_id="${ID_BY_SLUG[$parent_slug]:-}"
  if [[ -z "$child_id" || -z "$parent_id" ]]; then
    echo "ERROR: missing runtime ID for edge $child_slug -> $parent_slug" >&2
    exit 2
  fi
  if ! patch_parent "$COMPANY_ID" "$child_id" "$parent_id" "$child_name -> $parent_slug"; then
    failures=$((failures+1))
  fi
done

# Generate SQL fallback after every repair attempt.
node "$ROOT/scripts/generate-org-sql-fix-dynamic.mjs" >/dev/null || true
if [[ -s "$OUT_DIR/patch-failures.log" ]]; then
  echo "Some patch attempts failed. If final verify is still flat, use the generated SQL fallback:" >&2
  echo "$OUT_DIR/fix-org-hierarchy.sql" >&2
fi
