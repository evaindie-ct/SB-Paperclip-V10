#!/usr/bin/env bash
set -euo pipefail
if [ $# -lt 1 ]; then echo "Usage: ./scripts/export-company.sh <company-id> [output-dir]"; exit 1; fi
CMD="${PAPERCLIPAI_CMD:-paperclipai}"
OUT="${2:-./exports/san-bernardo-export}"
mkdir -p "$(dirname "$OUT")"
$CMD company export "$1" --out "$OUT" --include company,agents,skills,projects,tasks
echo "Exported to $OUT"
