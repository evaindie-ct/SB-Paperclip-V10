---
schema: agentcompanies/v1
name: San Bernardo
slug: san-bernardo
description: Knitwear fashion brand business
goal: Build and operate San Bernardo as a premium Patagonia-inspired knitwear company selling in Europe and the UK.
worker_count_lossless: 37
worker_count_importable_default: 36
runtime_version: v10
---

# San Bernardo

This package is a Paperclip-ready runtime package for San Bernardo with CEO as the Paperclip runtime root and all API-facing roles mapped to Paperclip accepted enums.

## Source of truth

The full uploaded manual is preserved exactly in:

- `original/san-bernardo-paperclip-final-clean-operating-manual-with-diagram-and-librarian.md`
- `companies/san-bernardo/original/san-bernardo-paperclip-final-clean-operating-manual-with-diagram-and-librarian.md`

## Runtime package contents

- `AGENTS.md` — company org chart and roster
- `agents/<slug>/AGENTS.md` — Paperclip agent card with runtime fields
- `agents/<slug>/instructions.md` — markdown instructions used by process adapters
- `agents/<slug>/runtime.json` — machine-readable per-worker runtime config
- `runtime/paperclip-runtime-manifest.importable-36.topological.json` — default Paperclip seed manifest, parent-first with CEO root
- `runtime/paperclip-runtime-manifest.full-37.json` — lossless manifest including Human Owner
- `runtime/paperclip-runtime-manifest.hermes-local-optional-37.json` — optional Hermes adapter overlay
- `GOALS.md`, `PROJECTS.md`, `TASKS.md` — initial alignment layer
- `source-packs/`, `operating-system/`, `prompts/`, `queues/`, `vat-spain-netherlands-engine/`

## Safe default

Heartbeats are intentionally disabled in every worker until you confirm:

1. Paperclip import worked.
2. Claude/Codex/Hermes adapters resolve.
3. Secrets are configured.
4. Budgets are acceptable.
5. You manually approve first run.
