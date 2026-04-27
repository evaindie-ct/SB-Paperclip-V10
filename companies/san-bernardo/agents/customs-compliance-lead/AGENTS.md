---
schema: agentcompanies/v1
name: Customs / Compliance Lead
slug: customs-compliance-lead
role: general
business_role: customs_compliance_lead
title: Customs / Compliance Lead
reports_to: industrial-director
paperclip_reports_to: industrial-director
capabilities:
- Own customs, HS code logic, import documents, origin rules, duties, Incoterms, and EU/UK/Norway/Switzerland import implications
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/customs-compliance-lead/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Customs / Compliance Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1800
  graceSec: 30
contextMode: thin
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

- Paperclip API role: `general`
- Business role preserved as: `customs_compliance_lead`
