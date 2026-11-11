# Duolingwow

World of Warcraft addon that detects common chat abbreviations (zones, dungeons, raids, battlegrounds, cities) and shows a tooltip when you click the link.

Supports **WoW Classic Anniversary (TBC)** and **World of Warcraft: Forever**.

![Anniversary](https://img.shields.io/badge/Anniversary-20506-blue) ![Forever](https://img.shields.io/badge/Forever-16001-4fc3f7) ![Version](https://img.shields.io/badge/version-1.1.1-green)

---

## Installation

**With [WoWUp](https://wowup.io/)** (recommended): *Get Addons* → *Install from URL* → paste `https://github.com/var-poro/duolingwow`. WoWUp picks the right version for your client (Anniversary or Forever) and keeps it updated.

**With the [CurseForge app](https://www.curseforge.com/wow/addons/duolingwow)**: search for *Duolingwow*.

**Manually**: download `Duolingwow-x.y.z.zip` from the [latest release](https://github.com/var-poro/duolingwow/releases/latest) and extract it into `World of Warcraft/_anniversary_/Interface/AddOns/` or `World of Warcraft/_forever_/Interface/AddOns/`.

## Features

- **Chat tooltips** : click a recognized term (e.g. `BRD`, `AQ40`, `STV`, `Shat`) to see the full name, zone, level, extension and type.
- **Multi-language** : choose which languages to show (English, Français, Deutsch). Each entry can display in the enabled languages.
- **Extension filter** : enable or disable Vanilla and The Burning Crusade (Anniversary) or Vanilla and WoW Forever (Forever); only matching abbreviations are shown and become clickable.
- **Zone type filter** : enable or disable Raid, Dungeon, Zone, Battleground, City, Arena.
- **Custom link color** : set the color of clickable abbreviation links in chat (options).
- **Tooltip blocklist** : disable tooltips for specific abbreviations (`/dl blocklist add <key>` or in the options).
- **Case-aware matching** : abbreviations that are also everyday words (`if`, `live`, `mount`, `under`, `DC`, `HoT`...) only become links when typed with the exact case (`IF`, `Live`, `Mount`...).
- **Commands** : `/dl help`, `/dl status`, `/dl lang`, `/dl extension`, `/dl type`, `/dl blocklist` to manage languages, extensions, zone types and blocked keys.

## Configuration

**Interface → Chat → Duolingwow**

- **Languages** : multi-select to enable or disable English, French and German in tooltips.
- **Extensions** : multi-select to enable Vanilla and/or The Burning Crusade (only enabled extensions are shown).
- **Zone types** : multi-select to enable Raid, Dungeon, Zone, Battleground, City, Arena (only enabled types are shown).
- **Chat link color** : button to choose the color of abbreviation links in chat (with preview).

## Commands

All commands use the prefix `/dl`. Unknown commands print the help.

| Command | Description |
|---------|-------------|
| `/dl help` | Print all available commands in chat. |
| `/dl status` | Print currently enabled languages, extensions and zone types. |

**Languages** — control which languages appear in tooltips:

| Command | Description |
|---------|-------------|
| `/dl lang enable <lang>` | Enable a language in tooltips. |
| `/dl lang disable <lang>` | Disable a language in tooltips. |

Accepted values for `<lang>`: **EN**, **FR**, **DE** (case-insensitive).

**Extensions** — control which expansions are shown (Vanilla, The Burning Crusade):

| Command | Description |
|---------|-------------|
| `/dl extension enable <extension>` | Enable an extension; its abbreviations are shown and clickable. |
| `/dl extension disable <extension>` | Disable an extension; its abbreviations are hidden and not clickable. |

Accepted values for `<extension>`:
- **Vanilla** (alias: Classic)
- **TBC** / **The Burning Crusade** / **Burning Crusade** (any string containing "Burning" or "Crusade" is accepted) — Anniversary client
- **Forever** — Forever client

**Zone types** — control which kinds of zones are shown (Raid, Dungeon, Zone, Battleground, City, Arena):

| Command | Description |
|---------|-------------|
| `/dl type enable <type>` | Enable a zone type. |
| `/dl type disable <type>` | Disable a zone type. |

Accepted values for `<type>`: **Raid**, **Dungeon**, **Zone**, **Battleground**, **City**, **Arena**. You can use the English name or the name in your game language (e.g. Donjon, Schlachtfeld).

## Included abbreviations

**Anniversary client**: dungeons, raids, battlegrounds, arenas, cities and zones for **Vanilla** and **The Burning Crusade** (Eastern Kingdoms, Kalimdor, Outland). Examples: **BRD**, **UBRS**, **LBRS**, **MC**, **AQ20**, **AQ40**, **STV**, **COT**, **HFR**, **BF**, **SH**, **SP**, **SV**, **DM**, **ZF**, **ONY**, **Shat**, **WSG**, **AV**, **AB**.

**Forever client**: a dedicated dataset with Forever level ranges and content:
- New dungeons: **HoT** (Hall of Thanes), **RoL** (Ruins of Lordaeron), **ESW** (Excavation Site), **CoD**/**Dal** (City of Dalaran), **DC**/**TDC** (The Drowned City), **KS** (Krol'dok Stronghold), **AP** (Alcaz Prison), **BMH** (Blackmaw Hold), **ShT** (Shaper's Terrace)
- Raids: **BD** (Barrow Deeps), **Hyjal** (Hyjal Summit), **Ony**
- Battleground: **Darkspear** (Darkspear Islands)
- New zones: **Riverglades**, **MountHyjal**, **Shendralas**, **Zephras**

Only entries matching your enabled extensions and zone types are shown and turned into clickable links.

## Project structure

```
Duolingwow/                      # the addon (what gets packaged)
├── Duolingwow.toc               # Anniversary client (Interface 20506)
├── Duolingwow_Camelot.toc       # Forever client (Interface 16001; "Camelot" = Forever)
├── flavor_forever.lua           # Forever-only: switches to the Forever dataset
├── core.lua                     # Chat detection, links, tooltips, commands, filters
├── options.lua                  # Options panel
├── localization.lua             # UI strings EN / FR / DE
├── dictionary_{en,fr,de}.lua    # Classic/TBC dictionaries
├── dictionary_forever_{en,fr,de}.lua  # Forever dictionaries (generated, see tools/)
└── logo.tga
tools/                           # dictionary generator + offline tests (see tools/README.md)
.pkgmeta                         # packaging config (BigWigs packager)
.github/workflows/release.yml    # tests on every PR, GitHub release on every "v*" tag
```

## Releasing

Bump `## Version` in both TOC files and add a section to `CHANGES.md` (used as the release notes), then push a tag: `git tag v1.2.0 && git push origin v1.2.0`. The workflow runs the tests, builds `Duolingwow-v1.2.0.zip`, publishes a GitHub release with a `release.json` file (which WoWUp uses to offer the update) and uploads the same zip to [CurseForge](https://www.curseforge.com/wow/addons/duolingwow) (project 1453777, needs the `CF_API_TOKEN` repository secret).

## Future ideas

- **Map labels** : show abbreviations on the world map by appending them to existing zone names.
- **WotLK and later** : add expansion filter options and dictionaries for WotLK, Retail, etc.
- **Forever roadmap** : add the raids and dungeons announced for Spring/Summer 2027 when they are named.
- **Server language** : abbreviations could follow the server’s language (e.g. on EN servers SW = Stormwind; on FR servers HV = Hurlevent). Right now all abbreviations are English-only.

## Author

**Poro**  
GitHub: [github.com/var-poro/duolingwow](https://github.com/var-poro/duolingwow)
