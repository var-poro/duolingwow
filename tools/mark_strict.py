# Adds `strict = true` to every COMMON_WORDS key of the Classic/TBC dictionaries.
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from common_words import COMMON_WORDS  # noqa: E402

d = sys.argv[1]
for lang in ("en", "fr", "de"):
    path = f"{d}/dictionary_{lang}.lua"
    t = open(path, encoding="utf-8").read()
    added, missing = [], []
    for key in sorted(COMMON_WORDS):
        m = re.search(r"^(  " + re.escape(key) + r" = \{\n(?:    .*\n)*?)(  \},)", t, re.M)
        if not m:
            missing.append(key)
            continue
        if "strict = true" not in m.group(1):
            t = t[: m.end(1)] + "    strict = true,\n" + t[m.end(1):]
            added.append(key)
    open(path, "w", encoding="utf-8", newline="").write(t)
    print(lang, "added:", len(added), "| not in this dictionary:", missing)
