---
schema: agentcompanies/v1
name: Commercial Finance Lead
slug: commercial-finance-lead
role: cfo
business_role: commercial_finance_lead
title: Commercial Finance Lead
reports_to: operations-coordinator
paperclip_reports_to: operations-coordinator
capabilities:
- Own commercial finance logic: prices, landed cost, margins, budgets, cash discipline, payment timing, and financial decision support
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/commercial-finance-lead/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Commercial Finance Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1200
  graceSec: 30
contextMode: fat
budgetMonthlyCents: 7500
heartbeatSchedule:
  enabled: false
  intervalSec: 3600
  recommended: Hourly or twice daily once stable
tools:
- file
- paperclip
---



## Paperclip role mapping

- Paperclip API role: `cfo`
- Business role preserved as: `commercial_finance_lead`
