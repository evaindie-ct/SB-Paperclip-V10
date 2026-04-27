# Post-Import Checklist

Paperclip company import can create the org, but runtime defaults may still need manual configuration.

Check each agent:

- Role is correct.
- CEO has role `ceo`.
- Reporting line is correct.
- Adapter type is set.
- Adapter config is set.
- Working directory / `cwd` is set.
- Permissions are intentional.
- Heartbeat interval is intentional.
- Max concurrent runs is 1 unless intentional.
- Budget is set.
- Agent is paused until verified.

Run:

```bash
paperclipai company list
paperclipai agent list
paperclipai dashboard get
```
