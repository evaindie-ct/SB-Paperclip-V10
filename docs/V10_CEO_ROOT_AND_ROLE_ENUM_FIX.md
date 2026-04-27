# V10 Fix — CEO Root + Paperclip Role Enum

## Problem fixed

Paperclip rejected roles such as `hermes_agent`, `operations_coordinator`, and `knitwear_technical_specialist` because the API only accepts this enum:

```text
ceo, cto, cmo, cfo, engineer, designer, pm, qa, devops, researcher, general
```

## v10 changes

- Added **CEO** as the Paperclip runtime root.
- Set **Hermes Agent** to report to CEO.
- Changed every API-facing `role` field to a valid Paperclip role enum.
- Preserved the original business function as `businessRole` / `business_role`, title, capabilities, and instructions.
- Updated manifests from:
  - `importable-35` → `importable-36`
  - `full-36` → `full-37`

## Runtime root

```text
CEO
└── Hermes Agent
    ├── Creative Direction Approval
    ├── Librarian Worker
    └── Operations Coordinator
```

Human Owner remains external governance/final approval metadata and is not seeded as an autonomous Paperclip agent.
