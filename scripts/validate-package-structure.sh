#!/usr/bin/env bash
set -euo pipefail
ROOT="./companies/san-bernardo"
test -f "$ROOT/COMPANY.md"
test -f "$ROOT/AGENTS.md"
test -d "$ROOT/agents"
test -f "$ROOT/original/san-bernardo-paperclip-final-clean-operating-manual-with-diagram-and-librarian.md"
COUNT=$(find "$ROOT/agents" -mindepth 2 -maxdepth 2 -name AGENTS.md | wc -l | tr -d ' ')
echo "Active agent files: $COUNT"
[ "$COUNT" -ge 36 ]
