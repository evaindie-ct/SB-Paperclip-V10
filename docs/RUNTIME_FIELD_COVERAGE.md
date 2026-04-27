# Runtime Field Coverage

Every active worker now has:

- `name`
- `slug`
- `role`
- `title`
- `reportsTo`
- `paperclipReportsTo`
- `capabilities`
- `adapterType`
- `adapterConfig`
- `contextMode`
- `budgetMonthlyCents`
- `heartbeatSchedule`
- `tools`
- `permissions`
- `instructions.md`
- `runtime.json`

## Default executable agents

35 agents are default-importable. `Human Owner` is preserved as an external governance node and excluded from default seeding.

## Adapter defaults

- Claude workers: `claude_local`
- GPT/Codex workers: `codex_local`
- Human Owner: `external_human`
- Optional Hermes overlay: `runtime/paperclip-runtime-manifest.hermes-local-optional-37.json`

## Safety

All heartbeats are disabled by default.
