#!/usr/bin/env bash
set -euo pipefail
npx paperclipai onboard --yes
curl -fsS http://localhost:3100/api/health || true
npx paperclipai doctor || paperclipai doctor
