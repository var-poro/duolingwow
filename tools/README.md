# Tools

Maintenance scripts for the dictionaries, plus offline tests. Run them from the repository root.

| Script | Purpose |
|--------|---------|
| `gen_forever.py` | Generates `Duolingwow/dictionary_forever_{en,fr,de}.lua` from one source table (new Forever content + returning Classic content reused from the Classic dictionaries). **Edit this file, never the generated Lua files.** Sources are listed at the top of the script. |
| `common_words.py` | Keys that are also everyday words (`IF`, `Live`, `Mount`, `DC`...). They are flagged `strict = true` and only match with the exact case. |
| `mark_strict.py` | Applies `common_words.py` to the Classic/TBC dictionaries. |
| `parse_dict.py` | Small parser for the dictionary files (used by the other scripts). |
| `fix_names.py` | One-off FR/DE name corrections applied in 1.1.0 (kept for reference). |
| `harness.lua` + `run_tests.py` | Loads the addon through each TOC with a simulated WoW API (chat filters, links, tooltip, settings, color picker) and checks dictionaries, link creation, case rules, filters, blocklist and options. |

```bash
python tools/gen_forever.py Duolingwow Duolingwow      # regenerate Forever dictionaries
python tools/mark_strict.py Duolingwow                 # re-apply strict flags (Classic/TBC)
pip install lupa                                       # Lua 5.1 runtime for the tests
python tools/run_tests.py Duolingwow tools/harness.lua # run the tests
```

The same checks run in GitHub Actions on every pull request and before every release.
