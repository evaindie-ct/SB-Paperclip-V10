#!/usr/bin/env bash
set -euo pipefail
DISABLE_TELEMETRY=1 DO_NOT_TRACK=1 COMPANIES_TELEMETRY=0 npx companies.sh add ./companies/san-bernardo --target new --include company,agents,skills --dry-run
