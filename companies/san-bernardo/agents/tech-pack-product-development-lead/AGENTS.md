---
schema: agentcompanies/v1
name: Tech Pack / Product Development Lead
slug: tech-pack-product-development-lead
role: pm
business_role: tech_pack_product_development_lead
title: Tech Pack / Product Development Lead
reports_to: creative-direction-approval
paperclip_reports_to: creative-direction-approval
capabilities:
- Own tech pack completeness, factory readability, POMs, grading logic, construction notes, BOM, yarn specs, and sample correction loops
- Translate designer intent into factory-executable knitwear specifications
- Coordinate with textile specialist, factory liaison, and production planning
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/tech-pack-product-development-lead/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Tech Pack / Product Development Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
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
  intervalSec: 7200
  recommended: On-demand or twice daily once stable
tools:
- file
- paperclip
---



## Paperclip role mapping

- Paperclip API role: `pm`
- Business role preserved as: `tech_pack_product_development_lead`
