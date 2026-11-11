# Generates dictionary_forever_{en,fr,de}.lua for the WoW Forever client.
#
# Sources:
#  - New dungeons (names EN/FR/DE + level ranges): Blizzard news
#    "Explore the New Dungeons of World of Warcraft: Forever" (en-us / fr-fr / de-de).
#  - Raids, battleground, new zones (names EN/FR/DE): Blizzard news
#    "World of Warcraft: Forever Now Live" (en-us / fr-fr / de-de).
#  - Returning dungeon level ranges: warcraft.wiki.gg "World of Warcraft: Forever" dungeon table.
#  - Zone levels (Riverglades 35-45, Zephras Isle 1-12, Mount Hyjal 60), BG level 30-60: warcraft.wiki.gg.
#  - Returning content names (FR/DE): reused from the Classic/TBC dictionaries of this addon.
import json
import sys

src_dir, out_dir = sys.argv[1], sys.argv[2]
sys.path.insert(0, sys.argv[3] if len(sys.argv) > 3 else __import__("os").path.dirname(__import__("os").path.abspath(__file__)))
from parse_dict import parse  # noqa: E402
from common_words import COMMON_WORDS  # noqa: E402

classic = {l: parse(f"{src_dir}/dictionary_{l}.lua") for l in ("en", "fr", "de")}

CONTINENT = {
    "EK": {"en": "Eastern Kingdoms", "fr": "Royaumes de l'Est", "de": "Östliche Königreiche"},
    "KAL": {"en": "Kalimdor", "fr": "Kalimdor", "de": "Kalimdor"},
    "SKY": {"en": "Skywall", "fr": "Mur-Céleste", "de": "Himmelswall"},
}
CONT_FROM_EN = {"Eastern Kingdoms": "EK", "Kalimdor": "KAL"}

sections = []  # (title, [entry])


def classic_entry(keys, level="keep", strict=(), ref=None, extension="Vanilla"):
    """Returning content: names and metadata come from the Classic dictionaries."""
    ref = ref or keys[0]
    base = classic["en"][ref]
    lvl = base.get("level") if level == "keep" else level
    return {
        "keys": keys,
        "strict": set(strict),
        "names": {l: classic[l][ref]["name"] for l in ("en", "fr", "de")},
        "level": lvl,
        "cont": CONT_FROM_EN[base["zone"]],
        "extension": extension,
        "zoneType": base["zoneType"],
        "faction": base["faction"],
        "comment": base["name"],
    }


def new_entry(keys, en, fr, de, level, cont, zone_type, faction="Both", strict=(), extension="Forever"):
    return {
        "keys": keys,
        "strict": set(strict),
        "names": {"en": en, "fr": fr, "de": de},
        "level": level,
        "cont": cont,
        "extension": extension,
        "zoneType": zone_type,
        "faction": faction,
        "comment": en,
    }


# ---------------------------------------------------------------- dungeons
sections.append(("DUNGEONS - RETURNING (levels revised for Forever)", [
    classic_entry(["RFC"], "13-19"),
    classic_entry(["DM", "VC", "Deadmines"], "18-24"),
    classic_entry(["WC"], "19-25"),
    classic_entry(["SFK"], "23-29"),
    classic_entry(["BFD"], "25-31"),
    classic_entry(["Stocks", "Stock", "Stockade"], "26-32"),
    classic_entry(["RFK"], "30-36"),
    classic_entry(["Gnomer", "Gnome", "Gnomeregan"], "31-37"),
    classic_entry(["SM", "Scarlet"], "31-45"),
    classic_entry(["GY", "SMGY"], "31-37"),
    classic_entry(["Lib", "SMLib", "Library"], "34-40"),
    classic_entry(["Arm", "SMArm", "Armory"], "37-43"),
    classic_entry(["RFD"], "38-44"),
    classic_entry(["Cath", "SMCath", "Cathedral"], "39-45"),
    classic_entry(["Uld", "Ulda", "Uldaman"], "44-50", ref="Ulda"),
    classic_entry(["ZF"], "45-51"),
    classic_entry(["Mara", "Maraudon"], "48-54"),
    classic_entry(["Purple"], None),
    classic_entry(["Orange"], None),
    classic_entry(["Princess"], None),
    classic_entry(["ST", "Sunken"], "52-58"),
    classic_entry(["BRD"], "52-60"),
    classic_entry(["Angerforge"], None),
    classic_entry(["Emperor", "Emp"], None),
    classic_entry(["DireMaul"], "55-60"),
    classic_entry(["DME", "East"], "55-60"),
    classic_entry(["LBRS", "Lower"], "55-60"),
    classic_entry(["UBRS", "Upper"], "55-60"),
    classic_entry(["BRS"], "55-60"),
    classic_entry(["DMW", "West"], "58-60"),
    classic_entry(["DMN", "North"], "58-60"),
    classic_entry(["Tribute", "Trib"], "58-60"),
    classic_entry(["Scholo", "Schol", "Scholomance"], "58-60"),
    classic_entry(["Strat", "Strath", "Stratholme"], "58-60"),
    classic_entry(["StratLive", "Live"], "58-60"),
    classic_entry(["StratUD", "UD", "Undead", "Baron"], "58-60"),
]))

sections.append(("DUNGEONS - NEW IN FOREVER", [
    new_entry(["HoT", "Thanes", "HallOfThanes"], "Hall of Thanes", "La salle des Thanes", "Halle der Thanen",
              "13-18", "EK", "DUNGEON", "Alliance", strict=["HoT"]),
    new_entry(["RoL", "Lordaeron", "RuinsOfLordaeron"], "Ruins of Lordaeron", "Ruines de Lordaeron", "Ruinen von Lordaeron",
              "15-20", "EK", "DUNGEON", "Horde"),
    new_entry(["ESW", "Excavation", "ExcavationSite"], "Excavation Site", "Excavations", "Ausgrabungsstätte",
              "24-29", "EK", "DUNGEON"),
    new_entry(["CoD", "Dal", "CityOfDalaran"], "City of Dalaran", "Cité de Dalaran", "Stadt Dalaran",
              "28-33", "EK", "DUNGEON"),
    new_entry(["DC", "TDC", "Drowned", "DrownedCity"], "The Drowned City", "La cité Submergée", "Die Versunkene Stadt",
              "35-40", "EK", "DUNGEON", strict=["DC"]),
    new_entry(["KS", "Krol", "Kroldok"], "Krol'dok Stronghold", "Bastion Krol'dok", "Festung Krol'dok",
              "40-45", "EK", "DUNGEON", strict=["KS"]),
    new_entry(["AP", "Alcaz", "AlcazPrison"], "Alcaz Prison", "Prison d'Alcaz", "Alcaz-Gefängnis",
              "48-53", "KAL", "DUNGEON", strict=["AP"]),
    new_entry(["BMH", "Blackmaw", "BlackmawHold"], "Blackmaw Hold", "Repaire des Noiregueules", "Schwarzschlundfeste",
              "55-60", "KAL", "DUNGEON"),
    new_entry(["ShT", "Shaper", "Shapers", "ShapersTerrace"], "Shaper's Terrace", "La terrasse du Façonneur", "Terrasse des Formers",
              "58-60", "KAL", "DUNGEON"),
]))

# ---------------------------------------------------------------- raids
sections.append(("RAIDS", [
    new_entry(["BD", "Barrow", "BarrowDeeps"], "Barrow Deeps", "Profondeurs des Saisons", "Tiefengrabhügel",
              "60", "KAL", "RAID"),
    new_entry(["Hyjal", "HyjalSummit"], "Hyjal Summit", "Sommet d'Hyjal", "Hyjalgipfel",
              "60", "KAL", "RAID"),
    classic_entry(["Ony", "Oni", "ONY", "Onyxia"], "60"),
]))

# ---------------------------------------------------------------- battlegrounds
sections.append(("BATTLEGROUNDS", [
    new_entry(["Darkspear", "DarkspearIslands"], "Darkspear Islands", "Îles des Sombrelances", "Darkspear-Inseln",
              "30-60", "KAL", "BATTLEGROUND"),
    classic_entry(["WSG", "Warsong", "Gulch"], "10-60"),
    classic_entry(["AB", "Basin"], "20-60"),
    classic_entry(["AV", "Valley"], "51-60"),
]))

# ---------------------------------------------------------------- cities
city = lambda keys, **kw: classic_entry(keys, "1-60", **kw)  # noqa: E731
sections.append(("CITIES", [
    city(["SW", "Stormwind"]),
    city(["IF"], strict=["IF"]),
    city(["Darn", "Darna", "Darnassus"]),
    city(["Org", "Orgri", "OG", "Orgrimmar"]),
    city(["UC", "Under", "Unter", "Undercity"]),
    city(["TB", "Thunder", "ThunderBluff"]),
    city(["Stonard"]),
    new_entry(["Dalaran"], "Dalaran", "Dalaran", "Dalaran", "1-60", "EK", "CITY"),
    city(["BB"]),
    city(["Gadget", "Gadgetzan"]),
    city(["Ratchet"]),
    city(["Everlook"]),
    city(["CH"]),
]))

# ---------------------------------------------------------------- hubs + zones
sections.append(("DUNGEON/RAID HUBS", [classic_entry(["BRM"])]))

zone_keys = [
    # Eastern Kingdoms
    ["Elwynn"], ["DunMorogh"], ["Tirisfal"], ["Westfall"], ["Loch", "LochModan"], ["Silverpine"],
    ["Redridge"], ["Duskwood"], ["Wetlands"], ["Hillsbrad"], ["Alterac"], ["Arathi"],
    ["STV", "Stranglethorn"], ["Badlands"], ["Swamp", "SoS"], ["Hinterlands", "Hinter"],
    ["Searing", "Gorge", "SearingGorge"], ["Blasted", "BlastedLands"], ["Burning", "Steppes", "BurningSteppes"],
    ["WPL", "WestPlague", "Plague", "Plaguelands"], ["EPL", "EastPlague"], ["Deadwind"],
    # Kalimdor
    ["Teldrassil"], ["Mulgore"], ["Durotar"], ["Darkshore"], ["Barrens"], ["Ashenvale"], ["Stonetalon"],
    ["Desolace"], ["Needles", "ThousandNeedles"], ["Dustwallow", "Marsh"], ["Feralas"], ["Tanaris"],
    ["UnGoro", "Ungoro", "Crater"], ["Felwood"], ["Azshara"], ["Silithus"], ["Winterspring"],
]
zones = [classic_entry(k) for k in zone_keys]
zones.append(classic_entry(["Moonglade"], "1-60"))
sections.append(("ZONES - RETURNING (Classic level ranges)", zones))

sections.append(("ZONES - NEW IN FOREVER", [
    new_entry(["Riverglades"], "Riverglades", "Rives Claires", "Flusslande", "35-45", "EK", "ZONE"),
    new_entry(["MountHyjal"], "Mount Hyjal", "Mont Hyjal", "Berg Hyjal", "60", "KAL", "ZONE"),
    new_entry(["Shendralas"], "Shen'dralas", "Shen'dralas", "Shen'dralas", None, "KAL", "ZONE"),
    new_entry(["Zephras", "ZephrasIsle"], "Zephras Isle", "Île de Zéphras", "Insel Zephras", "1-12", "SKY", "ZONE"),
]))


def lua_str(s):
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'


# Everyday-word aliases only match with exact case (see common_words.py).
for _, entries in sections:
    for e in entries:
        e["strict"] |= set(e["keys"]) & COMMON_WORDS

all_keys = {}
for _, entries in sections:
    for e in entries:
        for k in e["keys"]:
            assert k not in all_keys, f"duplicate key {k}"
            all_keys[k] = e

for lang in ("en", "fr", "de"):
    out = ["local ADDON_NAME, DL = ...", "",
           "-- WoW Forever dataset (loaded only by Duolingwow_Camelot.toc).",
           "-- Generated from a single source table so EN/FR/DE stay consistent.",
           "DL.Dictionary = DL.Dictionary or {}",
           f"DL.Dictionary.{lang.upper()} = {{"]
    for title, entries in sections:
        out += ["  -- " + "=" * 76, f"  -- {title}", "  -- " + "=" * 76, ""]
        for e in entries:
            out.append(f"  -- {e['comment']}")
            for k in e["keys"]:
                out.append(f"  {k} = {{")
                out.append(f"    name = {lua_str(e['names'][lang])},")
                if e["level"]:
                    out.append(f"    level = {lua_str(e['level'])},")
                out.append(f"    zone = {lua_str(CONTINENT[e['cont']][lang])},")
                out.append(f"    extension = {lua_str(e['extension'])},")
                out.append(f"    zoneType = {lua_str(e['zoneType'])},")
                out.append(f"    faction = {lua_str(e['faction'])},")
                if k in e["strict"]:
                    out.append("    strict = true,")
                out.append("  },")
            out.append("")
    out.append("}")
    open(f"{out_dir}/dictionary_forever_{lang}.lua", "w", encoding="utf-8", newline="\n").write("\n".join(out) + "\n")

print("keys:", len(all_keys), "entries:", sum(len(e) for _, e in sections))
