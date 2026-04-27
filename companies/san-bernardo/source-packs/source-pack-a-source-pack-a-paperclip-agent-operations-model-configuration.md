## Source Pack A: Paperclip / agent operations / model configuration
Purpose: Use for Paperclip form fields, adapter config, instructionsFilePath, promptTemplate, cwd, model selection, and hierarchy discipline.

### Paperclip Process Adapter docs
- URL: https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Learn: claude_local, codex_local, command, cwd, instructionsFilePath, model, promptTemplate, maxTurnsPerRun, env, timeoutSec, graceSec.
- Apply: Put the real training in instructionsFilePath. Keep promptTemplate short and task-triggered. Use absolute cwd and instructionsFilePath paths.

### Paperclip product model / company structure notes
- URL: https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Learn: Company goal, employees as agents, org structure, revenue/expenses, task hierarchy.
- Apply: Every worker must have a clear manager, scope, budget discipline, and work traceable to company goals.

### Anthropic Claude model overview
- URL: https://platform.claude.com/docs/en/about-claude/models/overview
- Learn: Available Claude model family and selection logic.
- Apply: Use Opus for high-risk synthesis, Sonnet for serious execution, Haiku for repetitive lower-risk work.

### Anthropic Claude model deprecations
- URL: https://platform.claude.com/docs/en/about-claude/model-deprecations
- Learn: Recommended replacements include claude-sonnet-4-6, claude-opus-4-7, and claude-haiku-4-5-20251001.
- Apply: Avoid deprecated Claude IDs. Use current replacements unless the Paperclip UI only exposes older IDs.

### OpenAI Codex model guide
- URL: https://developers.openai.com/codex/models
- Learn: Codex model picker guidance: use gpt-5.5 when available; fall back to gpt-5.4; use gpt-5.4-mini for lighter coding subagents.
- Apply: Use Codex for Shopify theme/code, automations, data workflows, file edits, and UI build-run-verify tasks.

Rules:
- instructionsFilePath is the main training surface; do not rely on a vague promptTemplate.
- Every worker must cite source names or URLs when giving technical, legal, tax, compliance, or platform-specific claims.
- Every worker must mark missing facts as MISSING; never fill gaps with plausible guesses.
- Managers audit whether subordinates used the correct source pack before accepting their output.
