#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lib/paperclip-curl-common.sh
source "$DIR/lib/paperclip-curl-common.sh"
need_jq
list_companies_json | jq -r '.. | objects | select(.id? or .companyId?) | "- " + ((.name // .displayName // .slug // "unnamed")|tostring) + " / runtime id assigned by Paperclip: " + ((.id // .companyId // "unknown")|tostring)' | sort -u
