#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

paperclipai company import \
  --from ./companies/san-bernardo \
  --target new \
  --new-company-name "San Bernardo" \
  --include company,agents,skills,projects,tasks \
  --dry-run
