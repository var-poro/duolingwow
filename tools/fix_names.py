import re
import sys

d = sys.argv[1]
FIXES = {
    "fr": {
        "Les Enclos des esclaves": "Les enclos aux esclaves",
        "Le Mécanar": "Le Méchanar",
        "Le Marécage noir": "Le Noir Marécage",
        "Mille Aiguilles": "Mille pointes",
        "Feralas": "Féralas",
        "Longuetête": "Long-Guet",
        "Berceau de l'Hiver": "Berceau-de-l'Hiver",
        "Reflet de Lune": "Reflet-de-Lune",
        "Œil du cyclone": "L'Œil du cyclone",
    },
    "de": {
        "Der Untere Sumpf": "Der Tiefensumpf",
        "Auchenaikrypten": "Auchenaikrypta",
        "Flucht von Durnholde": "Vorgebirge des Alten Hügellands",
        "Schlangenschrein": "Höhle des Schlangenschreins",
        "Schlucht der Kriegshymnen": "Kriegshymnenschlucht",
        "Nagrandarena": "Arena von Nagrand",
        "Schwarzer Tempel": "Der Schwarze Tempel",
        "Die zerschmetterten Hallen": "Die Zerschmetterten Hallen",
    },
}
STRICT_KEYS = ["IF", "SET"]

for lang in ("en", "fr", "de"):
    path = f"{d}/dictionary_{lang}.lua"
    t = open(path, encoding="utf-8").read()
    for old, new in FIXES.get(lang, {}).items():
        pat = f'name = "{old}",'
        n = t.count(pat)
        assert n >= 1, (lang, old)
        t = t.replace(pat, f'name = "{new}",')
        print(lang, f"{old} -> {new} ({n}x)")
    for key in STRICT_KEYS:
        m = re.search(r"^(  " + key + r" = \{\n(?:    .*\n)*?)(  \},)", t, re.M)
        assert m, (lang, key)
        if "strict = true" not in m.group(1):
            t = t[: m.end(1)] + "    strict = true,\n" + t[m.end(1):]
            print(lang, "strict", key)
    open(path, "w", encoding="utf-8", newline="").write(t)
