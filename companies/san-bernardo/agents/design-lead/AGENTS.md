---
schema: agentcompanies/v1
name: Design Lead
slug: design-lead
role: designer
business_role: design_lead
title: Design Lead
reports_to: creative-direction-approval
paperclip_reports_to: creative-direction-approval
capabilities:
- Develop product and visual design direction from approved creative strategy
- Translate references into product/design briefs
- Keep knitwear silhouettes, patterns, and collection logic coherent
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/design-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Design Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `designer`
- Business role preserved as: `design_lead`
