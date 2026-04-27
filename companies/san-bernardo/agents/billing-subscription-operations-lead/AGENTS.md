---
schema: agentcompanies/v1
name: Billing / Subscription Operations Lead
slug: billing-subscription-operations-lead
role: cfo
business_role: billing_subscription_operations_lead
title: Billing / Subscription Operations Lead
reports_to: commercial-finance-lead
paperclip_reports_to: commercial-finance-lead
capabilities:
- Own billing operations, recurring/vendor subscriptions, invoice checks, SaaS spend, and subscription cancellation/renewal tracking
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/billing-subscription-operations-lead/instructions.md"
  model: claude-haiku-4-5-20251001
  effort: low
  chrome: false
  promptTemplate: "You are {{agent.name}}, Billing / Subscription Operations Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 25
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 600
  graceSec: 30
contextMode: thin
budgetMonthlyCents: 1500
heartbeatSchedule:
  enabled: false
  intervalSec: 7200
  recommended: On-demand or twice daily once stable
tools:
- file
- paperclip
---



## Paperclip role mapping

- Paperclip API role: `cfo`
- Business role preserved as: `billing_subscription_operations_lead`
