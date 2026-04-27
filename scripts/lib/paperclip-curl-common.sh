#!/usr/bin/env bash
set -euo pipefail

ROOT="${SAN_BERNARDO_PAPERCLIP_ROOT:-$(pwd)}"
if [[ -f "$ROOT/.env" ]]; then
  set -a
  # shellcheck disable=SC1091
  source "$ROOT/.env"
  set +a
fi
ROOT="${SAN_BERNARDO_PAPERCLIP_ROOT:-$ROOT}"
API_BASE="${PAPERCLIP_API_BASE:-http://localhost:3100/api}"
API_BASE="${API_BASE%/}"
MANIFEST="$ROOT/companies/san-bernardo/runtime/paperclip-runtime-manifest.importable-36.topological.json"
if [[ ! -f "$MANIFEST" ]]; then
  MANIFEST="$ROOT/companies/san-bernardo/runtime/paperclip-runtime-manifest.importable-36.json"
fi
STATE_FILE="$ROOT/.paperclip-current-company.json"
OUT_DIR="$ROOT/companies/san-bernardo/runtime/repair-output"
mkdir -p "$OUT_DIR"

need_jq() {
  if ! command -v jq >/dev/null 2>&1; then
    echo "ERROR: jq is required. Install jq first." >&2
    exit 1
  fi
}

company_name() {
  jq -r --arg fallback "${PAPERCLIP_COMPANY_NAME:-}" '.company.name // $fallback' "$MANIFEST"
}

headers=()
build_headers() {
  headers=(-H "Content-Type: application/json" -H "Accept: application/json" -H "Origin: http://localhost:3100" -H "Referer: http://localhost:3100/")
  if [[ -n "${PAPERCLIP_AUTH_TOKEN:-}" ]]; then
    headers+=( -H "Authorization: Bearer ${PAPERCLIP_AUTH_TOKEN}" )
  fi
  local cookie="${PAPERCLIP_COOKIE:-}"
  if [[ -z "$cookie" && -n "${PAPERCLIP_COOKIE_FILE:-}" && -f "${PAPERCLIP_COOKIE_FILE}" ]]; then
    cookie="$(cat "${PAPERCLIP_COOKIE_FILE}")"
  fi
  if [[ -n "$cookie" ]]; then
    headers+=( -H "Cookie: $cookie" )
  fi
  if [[ -n "${PAPERCLIP_CSRF_TOKEN:-}" ]]; then
    headers+=( -H "X-CSRF-Token: ${PAPERCLIP_CSRF_TOKEN}" )
  fi
}

api() {
  local method="$1"; shift
  local url="$1"; shift
  local body="${1:-}"
  build_headers
  if [[ -n "$body" ]]; then
    curl -sS -X "$method" "${headers[@]}" --data "$body" "$url"
  else
    curl -sS -X "$method" "${headers[@]}" "$url"
  fi
}

api_status() {
  local method="$1"; shift
  local url="$1"; shift
  local body="${1:-}"
  local outfile="$2"
  build_headers
  if [[ -n "$body" ]]; then
    curl -sS -o "$outfile" -w "%{http_code}" -X "$method" "${headers[@]}" --data "$body" "$url"
  else
    curl -sS -o "$outfile" -w "%{http_code}" -X "$method" "${headers[@]}" "$url"
  fi
}

extract_id() {
  jq -r '(.id // .company.id // .companyId // .data.id // .data.company.id // .agent.id // .agentId // .data.agent.id // .newAgentId // empty)' | head -n 1
}

save_company_state() {
  local id="$1" name="$2"
  jq -n --arg id "$id" --arg name "$name" --arg apiBase "$API_BASE" --arg createdAt "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
    '{companyId:$id, companyName:$name, apiBase:$apiBase, createdAt:$createdAt, note:"Generated locally by Paperclip. Do not commit as source."}' > "$STATE_FILE"
  echo "Saved runtime company state: $STATE_FILE"
}

state_company_id() {
  if [[ -f "$STATE_FILE" ]]; then
    jq -r '.companyId // empty' "$STATE_FILE"
  fi
}

list_companies_json() {
  api GET "$API_BASE/companies"
}

discover_company_id_by_name() {
  local wanted="${PAPERCLIP_COMPANY_NAME:-$(company_name)}"
  local tmp="$OUT_DIR/companies.tmp.json"
  list_companies_json > "$tmp"
  local count
  count=$(jq --arg wanted "$wanted" '[.. | objects | select((.name? == $wanted) or (.displayName? == $wanted) or (.slug? == $wanted)) | (.id // .companyId // empty)] | unique | length' "$tmp")
  if [[ "$count" == "1" ]]; then
    jq -r --arg wanted "$wanted" '[.. | objects | select((.name? == $wanted) or (.displayName? == $wanted) or (.slug? == $wanted)) | (.id // .companyId // empty)] | unique | .[0]' "$tmp"
    return 0
  fi
  if [[ "$count" == "0" ]]; then
    echo "ERROR: No company found named: $wanted" >&2
  else
    echo "ERROR: Multiple companies found named: $wanted. Rename/delete duplicates or run bootstrap to create a new unique name." >&2
  fi
  echo "Available companies:" >&2
  jq -r '.. | objects | select(.id? or .companyId?) | "- " + ((.name // .displayName // .slug // "unnamed")|tostring) + " / runtime id: " + ((.id // .companyId // "unknown")|tostring)' "$tmp" | sort -u >&2 || true
  exit 2
}

current_company_id() {
  local id="$(state_company_id || true)"
  if [[ -n "$id" && "$id" != "null" ]]; then
    echo "$id"
  else
    discover_company_id_by_name
  fi
}

agent_payload() {
  local agent_json="$1" parent_id="$2"
  jq -cn --argjson a "$agent_json" --arg parent "$parent_id" '
    {
      name: $a.name,
      role: $a.role,
      title: $a.title,
      reportsTo: (if $parent == "" then null else $parent end),
      capabilities: (($a.capabilities // []) | join("\n")),
      adapterType: $a.adapterType,
      adapterConfig: $a.adapterConfig,
      contextMode: $a.contextMode,
      heartbeatSchedule: $a.heartbeatSchedule,
      budgetMonthlyCents: $a.budgetMonthlyCents
    }'
}

agent_id_from_list() {
  local agents_file="$1" slug="$2" name="$3"
  jq -r --arg slug "$slug" --arg name "$name" '
    [.. | objects | select((.slug? == $slug) or (.name? == $name)) | (.id // .agentId // empty)] | unique | if length == 1 then .[0] else empty end
  ' "$agents_file"
}

list_agents_to_file() {
  local company_id="$1" outfile="$2"
  api GET "$API_BASE/companies/$company_id/agents" > "$outfile"
}

patch_parent() {
  local company_id="$1" child_id="$2" parent_id="$3" label="$4"
  local endpoints=(
    "$API_BASE/agents/$child_id"
    "$API_BASE/companies/$company_id/agents/$child_id"
    "$API_BASE/agents/$child_id/manager"
    "$API_BASE/companies/$company_id/agents/$child_id/manager"
  )
  local methods=(PATCH PUT POST)
  local payloads=(
    "$(jq -cn --arg v "$parent_id" '{reportsTo:$v}')"
    "$(jq -cn --arg v "$parent_id" '{reports_to:$v}')"
    "$(jq -cn --arg v "$parent_id" '{reportsToId:$v}')"
    "$(jq -cn --arg v "$parent_id" '{parentId:$v}')"
    "$(jq -cn --arg v "$parent_id" '{managerId:$v}')"
    "$(jq -cn --arg v "$parent_id" '{managerAgentId:$v}')"
  )
  local response="$OUT_DIR/patch-response.tmp"
  for url in "${endpoints[@]}"; do
    for method in "${methods[@]}"; do
      for payload in "${payloads[@]}"; do
        code=$(api_status "$method" "$url" "$payload" "$response" || true)
        if [[ "$code" =~ ^2 ]]; then
          echo "Linked $label via $method $url"
          return 0
        fi
        echo "$method $url $payload -> $code $(head -c 300 "$response" 2>/dev/null)" >> "$OUT_DIR/patch-failures.log"
      done
    done
  done
  echo "FAILED to link $label. See $OUT_DIR/patch-failures.log" >&2
  return 1
}
