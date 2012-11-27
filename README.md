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

Customize the location of the journal by setting the `JOURNAL` environment
variable or by passing an argument to `journal` directly:

```bash
JOURNAL=path/to/journal journal
```

or

```bash
journal path/to/journal
```

This enables keeping separate journals for different topics or contexts.
