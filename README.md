# San Bernardo Paperclip Runtime v10

This is the current Paperclip package for **San Bernardo**, a knitwear fashion brand business.

v10 fixes the two previous blockers:

1. **CEO is now the Paperclip runtime root.**
2. **All API-facing roles now use Paperclip's accepted role enum.**

The real business role of each worker is still preserved in `businessRole`, `business_role`, title, capabilities, and instruction files.

## Use this path

```bash
cp .env.example .env
nano .env
```

Set:

```bash
SAN_BERNARDO_PAPERCLIP_ROOT=/absolute/path/to/san-bernardo-paperclip-global-PAPERCLIP-RUNTIME-v10
PAPERCLIP_API_BASE=http://localhost:3100/api
PAPERCLIP_COMPANY_NAME=San Bernardo
PAPERCLIP_COMPANY_DESCRIPTION=Knitwear fashion brand business
```

Then:

```bash
npm run validate
npm run bootstrap
npm run verify:org
```

If Paperclip blocks parent-link repair with `401` or `403`, paste your logged-in Paperclip browser cookie into `.env`:

```bash
PAPERCLIP_COOKIE='paste full Cookie header value here'
```

Then rerun:

```bash
npm run repair:org
npm run verify:org
```

## Active org

- 37 total roles in source
- 36 importable Paperclip runtime agents
- CEO is the Paperclip runtime root
- Hermes Agent reports to CEO
- Human Owner is external governance/final approval metadata
- Knitwear Technical Specialist is preserved
- Org hierarchy is forced by the curl/API scripts after creation

## Do not use

Do not use `paperclipai company import` for this package. Use:

```bash
npm run bootstrap
npm run verify:org
```
