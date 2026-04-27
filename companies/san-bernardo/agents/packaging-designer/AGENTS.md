---
schema: agentcompanies/v1
name: Packaging Designer
slug: packaging-designer
role: designer
business_role: packaging_designer
title: Packaging Designer
reports_to: creative-direction-approval
paperclip_reports_to: creative-direction-approval
capabilities:
- Own packaging design files, print specs, Pantone/CMYK notes, supplier-ready artwork, hangtags, labels, bags, and inserts
- Coordinate packaging compliance, EPR requirements, and press/vendor constraints
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/packaging-designer/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Packaging Designer for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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
- Business role preserved as: `packaging_designer`
