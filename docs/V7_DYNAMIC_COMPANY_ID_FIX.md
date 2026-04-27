# v8 dynamic company creation fix

v8 removes the setup requirement to provide a Paperclip company runtime ID.

Paperclip assigns the ID when creating a company. The repo now treats that value as local runtime state, not source code.

## New default commands

```bash
npm run bootstrap
npm run verify:org
```

## Local state file

```text
.paperclip-current-company.json
```

Ignored by Git.

## Why

The same repo may be imported on different local Paperclip instances. The company runtime ID changes every time. Hardcoding it makes the repo non-portable and causes broken repair scripts after recreating the company.
