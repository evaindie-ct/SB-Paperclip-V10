---
schema: agentcompanies/v1
name: Procurement Lead
slug: procurement-lead
role: general
business_role: procurement_lead
title: Procurement Lead
reports_to: industrial-director
paperclip_reports_to: industrial-director
capabilities:
- Own purchasing workflows, supplier quotes, purchase order checklists, packaging/material procurement, and cost/lead-time comparison
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/procurement-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Procurement Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1200
  graceSec: 30
contextMode: thin
budgetMonthlyCents: 3500
heartbeatSchedule:
  enabled: false
  intervalSec: 7200
  recommended: On-demand or twice daily once stable
tools:
- file
- paperclip
- web
---



## Paperclip role mapping

- Paperclip API role: `general`
- Business role preserved as: `procurement_lead`
