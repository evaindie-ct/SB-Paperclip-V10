#!/usr/bin/env bash
set -euo pipefail
# Creates a new Paperclip company, seeds agents in hierarchy order, force-repairs parent links, and verifies.
# No company ID is hardcoded; Paperclip assigns it and this script saves it to .paperclip-current-company.json.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lib/paperclip-curl-common.sh
source "$DIR/lib/paperclip-curl-common.sh"
need_jq

NAME="${PAPERCLIP_COMPANY_NAME:-$(company_name)}"
DESC="$(jq -r '.company.description // ""' "$MANIFEST")"
GOAL="$(jq -r '.company.goal // ""' "$MANIFEST")"

printf 'Creating Paperclip company: %s\n' "$NAME"
company_payload="$(jq -cn --arg name "$NAME" --arg description "$DESC" --arg goal "$GOAL" '{name:$name, description:$description, goal:$goal}')"
company_response="$OUT_DIR/create-company-response.json"
code=$(api_status POST "$API_BASE/companies" "$company_payload" "$company_response")
if [[ ! "$code" =~ ^2 ]]; then
  echo "ERROR: company creation failed HTTP $code" >&2
  cat "$company_response" >&2
  exit 1
fi
COMPANY_ID="$(cat "$company_response" | extract_id)"
if [[ -z "$COMPANY_ID" || "$COMPANY_ID" == "null" ]]; then
  echo "ERROR: could not read generated company runtime ID from response." >&2
  cat "$company_response" >&2
  exit 1
fi
save_company_state "$COMPANY_ID" "$NAME"

if [[ ! -f "$MANIFEST" ]]; then
  echo "ERROR: manifest not found: $MANIFEST" >&2
  exit 1
fi

declare -A ID_BY_SLUG
created_file="$OUT_DIR/created-agents.tsv"
: > "$created_file"

jq -c '.agents[]' "$MANIFEST" | while read -r agent; do
  slug="$(jq -r '.slug' <<<"$agent")"
  name="$(jq -r '.name' <<<"$agent")"
  parent_slug="$(jq -r '.paperclipReportsTo // empty' <<<"$agent")"
  parent_id=""
  if [[ -n "$parent_slug" ]]; then
    parent_id="$(awk -F '\t' -v s="$parent_slug" '$1==s {print $2}' "$created_file" | tail -1)"
    if [[ -z "$parent_id" ]]; then
      echo "ERROR: parent was not created before child: $slug -> $parent_slug" >&2
      exit 2
    fi
  fi
  payload="$(agent_payload "$agent" "$parent_id")"
  response="$OUT_DIR/create-agent-$slug.json"
  code=$(api_status POST "$API_BASE/companies/$COMPANY_ID/agents" "$payload" "$response")
  if [[ ! "$code" =~ ^2 ]]; then
    echo "ERROR: failed to create agent $name / $slug HTTP $code" >&2
    cat "$response" >&2
    exit 1
  fi
  agent_id="$(cat "$response" | extract_id)"
  if [[ -z "$agent_id" || "$agent_id" == "null" ]]; then
    echo "ERROR: could not read generated agent runtime ID for $name / $slug" >&2
    cat "$response" >&2
    exit 1
  fi
  printf '%s\t%s\t%s\n' "$slug" "$agent_id" "$name" >> "$created_file"
  echo "Created $name ($slug) -> $agent_id parent=${parent_slug:-ROOT}"
done

bash "$DIR/curl-repair-existing-company-org.sh"
bash "$DIR/curl-verify-org-hierarchy.sh"
