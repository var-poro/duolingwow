# Duolingwow

World of Warcraft addon that detects common chat abbreviations (zones, dungeons, raids, battlegrounds, cities) and shows a tooltip when you click the link.

![Interface](https://img.shields.io/badge/Interface-100207-blue) ![Version](https://img.shields.io/badge/version-1.0.0-green)

---

## Features

- **Chat tooltips** : click a recognized term (e.g. `BRD`, `AQ40`, `STV`, `Shat`) to see the full name, zone, level, extension and type.
- **Multi-language** : choose which languages to show (English, Français, Deutsch). Each entry can display in the enabled languages.
- **Extension filter** : enable or disable Vanilla and The Burning Crusade; only matching abbreviations are shown and become clickable.
- **Zone type filter** : enable or disable Raid, Dungeon, Zone, Battleground, City, Arena.
- **Custom link color** : set the color of clickable abbreviation links in chat (options).
- **Commands** : `/dl help`, `/dl status`, `/dl lang`, `/dl extension`, `/dl type` to manage languages, extensions and zone types.

## Configuration

**Interface → Chat → Duolingwow**

- **Languages** : multi-select to enable or disable English, French and German in tooltips.
- **Extensions** : multi-select to enable Vanilla and/or The Burning Crusade (only enabled extensions are shown).
- **Zone types** : multi-select to enable Raid, Dungeon, Zone, Battleground, City, Arena (only enabled types are shown).
- **Chat link color** : button to choose the color of abbreviation links in chat (with preview).

## Commands

| Command | Description |
|---------|-------------|
| `/dl help` | Show command help |
| `/dl status` | Show enabled languages, extensions and zone types |
| `/dl lang enable EN` | Enable English in tooltips |
| `/dl lang disable FR` | Disable French |
| `/dl extension enable TBC` | Enable The Burning Crusade (accepts TBC, The Burning Crusade, Burning Crusade) |
| `/dl extension disable Vanilla` | Disable Vanilla (accepts Vanilla, Classic) |
| `/dl type enable Raid` | Enable Raid zone type |
| `/dl type disable Battleground` | Disable Battleground zone type |

## Included abbreviations

Dungeons, raids, battlegrounds, arenas, cities and zones for **Vanilla** and **The Burning Crusade** (Eastern Kingdoms, Kalimdor, Outland). Examples: **BRD**, **UBRS**, **LBRS**, **MC**, **AQ20**, **AQ40**, **STV**, **COT**, **HFR**, **BF**, **SH**, **SP**, **SV**, **DM**, **ZF**, **ONY**, **Shat**, **WSG**, **AV**, **AB**. Only entries matching your enabled extensions and zone types are shown and turned into clickable links.

## Project structure

```
DuoLingWoW/
├── DuoLingWoW.toc    # Addon metadata + IconTexture
├── core.lua          # Chat detection, tooltips, commands, filters
├── options.lua       # Options panel (Interface)
├── localization.lua # UI strings EN / FR / DE
├── dictionary_en.lua # Abbreviation dictionary → English
├── dictionary_fr.lua # Abbreviation dictionary → Français
├── dictionary_de.lua # Abbreviation dictionary → Deutsch
├── logo.tga          # Logo (options + addon list)
└── README.md
```

## Future ideas

- **Map labels** : show abbreviations on the world map by appending them to existing zone names.
- **WotLK and later** : add expansion filter options and dictionaries for WotLK, Retail, etc.
- **Server language** : abbreviations could follow the server’s language (e.g. on EN servers SW = Stormwind; on FR servers HV = Hurlevent). Right now all abbreviations are English-only.

## Author

**Poro**  
GitHub: [github.com/poro/duolingwow](https://github.com/poro/duolingwow)
