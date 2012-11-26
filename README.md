### A Vim + cron + Markdown-based Journal

Edit your crontab:

```bash
crontab -e
```

Add an entry. If `journal` is not on your `PATH`, use the absolute path
to the script.

```cron
0,30 8-18 * * mon-fri journal
```
