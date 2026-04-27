#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lib/paperclip-curl-common.sh
source "$DIR/lib/paperclip-curl-common.sh"
need_jq
COMPANY_ID="$(current_company_id)"
agents_file="$OUT_DIR/verify-agents.json"
list_agents_to_file "$COMPANY_ID" "$agents_file"

missing=0
flat=0
checked=0
while read -r agent; do
  child_slug="$(jq -r '.slug' <<<"$agent")"
  child_name="$(jq -r '.name' <<<"$agent")"
  parent_slug="$(jq -r '.paperclipReportsTo // empty' <<<"$agent")"
  child_id="$(agent_id_from_list "$agents_file" "$child_slug" "$child_name")"
  if [[ -z "$child_id" ]]; then
    echo "MISSING: $child_name ($child_slug)"
    missing=$((missing+1))
    continue
  fi
  if [[ -n "$parent_slug" ]]; then
    parent_name="$(jq -r --arg p "$parent_slug" '.agents[] | select(.slug == $p) | .name' "$MANIFEST")"
    parent_id="$(agent_id_from_list "$agents_file" "$parent_slug" "$parent_name")"
    actual_parent="$(jq -r --arg id "$child_id" '[.. | objects | select((.id? == $id) or (.agentId? == $id)) | (.reportsTo // .reports_to // .reportsToId // .parentId // .managerId // .managerAgentId // empty)] | first // empty' "$agents_file")"
    checked=$((checked+1))
    if [[ -z "$actual_parent" || "$actual_parent" == "null" ]]; then
      echo "FLAT: $child_name expected parent $parent_name"
      flat=$((flat+1))
    elif [[ "$actual_parent" != "$parent_id" ]]; then
      echo "MISMATCH: $child_name expected parent $parent_name / $parent_id, got $actual_parent"
      flat=$((flat+1))
    fi
  fi
done < <(jq -c '.agents[]' "$MANIFEST")

echo "Checked parent edges: $checked"
echo "Missing agents: $missing"
echo "Bad/flat parent links: $flat"
if [[ "$missing" -eq 0 && "$flat" -eq 0 ]]; then
  echo "OK: Paperclip org hierarchy is linked."
  exit 0
fi
echo "NOT OK: Paperclip org is still flat or partially linked." >&2
echo "Run: npm run repair:org" >&2
echo "If blocked by 401/403, add PAPERCLIP_COOKIE to .env and rerun." >&2
exit 2
