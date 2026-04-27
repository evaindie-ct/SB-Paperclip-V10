---
schema: agentcompanies/v1
name: Template / Production Designer
slug: template-production-designer
role: designer
business_role: template_production_designer
title: Template / Production Designer
reports_to: creative-direction-approval
paperclip_reports_to: creative-direction-approval
capabilities:
- Create and maintain factory-readable templates for tech packs, BOMs, labels, packaging, inspection sheets, and operational docs
- Keep templates short, consistent, and directly usable by suppliers
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/template-production-designer/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Template / Production Designer for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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
---



## Paperclip role mapping

- Paperclip API role: `designer`
- Business role preserved as: `template_production_designer`
