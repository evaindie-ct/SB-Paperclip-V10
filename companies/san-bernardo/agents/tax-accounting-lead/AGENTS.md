---
schema: agentcompanies/v1
name: Tax / Accounting Lead
slug: tax-accounting-lead
role: cfo
business_role: tax_accounting_lead
title: Tax / Accounting Lead
reports_to: commercial-finance-lead
paperclip_reports_to: commercial-finance-lead
capabilities:
- Own Spanish SL tax calendar, IRPF withholding-related models, AEAT forms, EU OSS VAT, UK VAT monitoring, Modelo 303/390/349/111/190/200/202 agenda, bookkeeping handoff checklists, and filing deadline reminders
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/tax-accounting-lead/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Tax / Accounting Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 80
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1800
  graceSec: 30
contextMode: fat
budgetMonthlyCents: 6000
heartbeatSchedule:
  enabled: false
  intervalSec: 86400
  recommended: Daily/weekly monitoring depending on active deadlines
tools:
- file
- paperclip
- web
---



## Paperclip role mapping

- Paperclip API role: `cfo`
- Business role preserved as: `tax_accounting_lead`
