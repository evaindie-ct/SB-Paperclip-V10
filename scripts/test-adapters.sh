#!/usr/bin/env bash
set -euo pipefail
API_BASE="${PAPERCLIP_API_BASE:-http://localhost:3100/api}"

echo "Testing Claude local adapter..."
curl -sS -X POST "$API_BASE/adapters/test" \
  -H "Content-Type: application/json" \
  -d '{"adapterType":"claude_local","config":{"command":"claude","cwd":"'$(pwd)'"}}' | jq . || true

echo "Testing Codex local adapter..."
curl -sS -X POST "$API_BASE/adapters/test" \
  -H "Content-Type: application/json" \
  -d '{"adapterType":"codex_local","config":{"command":"codex","cwd":"'$(pwd)'"}}' | jq . || true
