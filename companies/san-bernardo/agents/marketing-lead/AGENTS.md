---
schema: agentcompanies/v1
name: Marketing Lead
slug: marketing-lead
role: cmo
business_role: marketing_lead
title: Marketing Lead
reports_to: creative-direction-approval
paperclip_reports_to: creative-direction-approval
capabilities:
- Own campaign concepts, content angles, launch messaging, and audience positioning
- Convert creative direction into marketing briefs and channel-ready copy
- Coordinate with ecommerce and sales workers
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/marketing-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Marketing Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `cmo`
- Business role preserved as: `marketing_lead`
