# Security Notes

Do not commit secrets, `.env`, API keys, supplier private documents, customer data, accounting files, or OAuth tokens.

Do not import unknown Paperclip packages without reviewing `.paperclip.yaml`, adapter settings, scripts, and remote URLs.

This repo intentionally avoids `.paperclip.yaml` runtime adapter config.
