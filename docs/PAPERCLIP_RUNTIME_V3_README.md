# Paperclip Runtime v4 Notes

## Why v4 exists

v2 preserved the manual and workers but did not include full runtime setup per worker.

v4 adds the fields needed to configure Paperclip process agents:

- `adapterType`
- `adapterConfig`
- `instructionsFilePath`
- `cwd`
- `model`
- `promptTemplate`
- `timeoutSec`
- `graceSec`
- Claude/Codex-specific effort/search/browser fields
- `contextMode`
- `budgetMonthlyCents`
- `heartbeatSchedule`
- `capabilities`
- `tools`
- `permissions`

## Default adapter choice

The default importable manifest uses Paperclip built-in process adapters:

- `claude_local` for Claude workers
- `codex_local` for GPT/Codex workers

Optional Hermes overlay:

- `runtime/paperclip-runtime-manifest.hermes-local-optional-37.json`

This requires installing/registering `hermes-paperclip-adapter` in the Paperclip server.

## Human Owner

Human Owner is preserved as governance. It is not seeded as an autonomous agent by default.

## Safe default

All heartbeats are disabled by default.

This prevents accidental spend or uncontrolled runs before:

1. API keys/secrets are configured.
2. Adapters test successfully.
3. Budgets are accepted.
4. You approve first execution.
