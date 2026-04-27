---
schema: agentcompanies/v1
name: Creative Direction Approval
slug: creative-direction-approval
role: pm
business_role: creative_direction_approval
title: Creative Direction Approval
reports_to: hermes-agent
paperclip_reports_to: hermes-agent
capabilities:
- Approve creative direction before execution by design, marketing, textile, tech pack, template, and packaging workers
- Protect brand coherence: Patagonia/Bariloche heritage, elevated knitwear, editorial tension, and non-generic luxury
- Reject work that dilutes San Bernardo into generic DTC fashion
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/creative-direction-approval/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Creative Direction Approval for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `pm`
- Business role preserved as: `creative_direction_approval`
