import re, sys, json
def parse(path):
    t = open(path, encoding='utf-8').read()
    out = {}
    for m in re.finditer(r'^\s{2}(\w+)\s*=\s*\{(.*?)^\s{2}\},', t, re.S|re.M):
        key, body = m.group(1), m.group(2)
        fields = dict(re.findall(r'(\w+)\s*=\s*"([^"]*)"', body))
        if key in out: print("DUPLICATE KEY", path, key)
        out[key] = fields
    return out
if __name__ == "__main__":
    d = sys.argv[1]
    dicts = {l: parse(f"{d}/dictionary_{l}.lua") for l in ("en","fr","de")}
    for l,v in dicts.items(): print(l, len(v))
    keys = set(dicts["en"])
    for l in ("fr","de"):
        print(l, "missing:", sorted(keys-set(dicts[l])), "extra:", sorted(set(dicts[l])-keys))
    for k in sorted(keys):
        for f in ("level","zone","extension","zoneType","faction"):
            vals = {l: dicts[l].get(k,{}).get(f) for l in dicts}
            if len(set(vals.values()))>1: print("MISMATCH", k, f, vals)
    # same EN name -> different FR/DE names?
    byname = {}
    for k,v in dicts["en"].items(): byname.setdefault(v["name"], []).append(k)
    for n,ks in byname.items():
        for l in ("fr","de"):
            s = {dicts[l][k]["name"] for k in ks if k in dicts[l]}
            if len(s)>1: print("NAME-INCONSISTENT", l, n, ks, s)
        for f in ("level","zone","extension","zoneType","faction"):
            s = {dicts["en"][k].get(f) for k in ks}
            if len(s)>1: print("ALIAS-INCONSISTENT", n, f, {k:dicts['en'][k].get(f) for k in ks})
    json.dump(dicts, open(sys.argv[2],"w",encoding="utf-8"), ensure_ascii=False, indent=1)
