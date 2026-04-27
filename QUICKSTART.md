# Quickstart v10

## 1. Start Paperclip

```bash
npx paperclipai onboard --yes
curl http://localhost:3100/api/health
```

## 2. Configure repo

```bash
cp .env.example .env
pwd
nano .env
```

Set:

```bash
SAN_BERNARDO_PAPERCLIP_ROOT=/absolute/path/to/san-bernardo-paperclip-global-PAPERCLIP-RUNTIME-v10
PAPERCLIP_API_BASE=http://localhost:3100/api
PAPERCLIP_COMPANY_NAME=San Bernardo
PAPERCLIP_COMPANY_DESCRIPTION=Knitwear fashion brand business
```

## 3. Create company + workers + org chart

```bash
chmod +x scripts/*.sh scripts/*.mjs scripts/lib/*.sh scripts/lib/*.mjs
npm run validate
npm run bootstrap
npm run verify:org
```

Expected structure:

```text
CEO
└── Hermes Agent
    ├── Creative Direction Approval
    ├── Librarian Worker
    └── Operations Coordinator
```

## 4. If org repair is blocked

Copy your browser cookie from a logged-in Paperclip session:

```text
DevTools → Network → successful /api request → Request Headers → Cookie
```

Paste into `.env`:

```bash
PAPERCLIP_COOKIE='paste cookie here'
```

Then:

```bash
npm run repair:org
npm run verify:org
```

## 5. SQL fallback

If API mutation is blocked, v10 generates:

```text
companies/san-bernardo/runtime/repair-output/fix-org-hierarchy.sql
```

Use only after backing up your local Paperclip database.
