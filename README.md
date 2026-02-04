# Duolingwow

World of Warcraft addon that detects common chat abbreviations (zones, dungeons, raids) and shows a tooltip when you click the link.

![Interface](https://img.shields.io/badge/Interface-100207-blue) ![Version](https://img.shields.io/badge/version-1.0.0-green)

---

## Features

- **Chat tooltips** : click a recognized term (e.g. `BRD`, `AQ40`, `STV`) to see the full name, zone, and level.
- **Multi-language** : choose which languages to show (English, Français). Each entry can display in the enabled languages.
- **Custom link color** : set the color of clickable abbreviation links in chat (options).
- **Commands** : `/dl help`, `/dl status`, `/dl lang enable` / `/dl lang disable` to manage languages.

## Configuration

**Interface → Chat → Duolingwow**

- **Languages** : multi-select dropdown to enable or disable English and French in tooltips.
- **Chat link color** : button to choose the color of abbreviation links in chat (with preview).

## Commands

| Command         | Description                |
|-----------------|----------------------------|
| `/dl help`      | Show command help          |
| `/dl status`    | Show enabled languages     |
| `/dl lang enable EN` | Enable English in tooltips |
| `/dl lang disable FR`| Disable French             |

## Included abbreviations

Examples: **BRD**, **UBRS**, **LBRS**, **MC**, **AQ20**, **AQ40**, **STV**, **COT**, **HFR**, **BF**, **SH**, **SP**, **SV**, **DM**, **ZF**, **ONY**, and other classic zones and instances (Eastern Kingdoms, Kalimdor, Outland).

## Project structure

```
DuoLingWoW/
├── DuoLingWoW.toc    # Addon metadata + IconTexture
├── core.lua          # Chat detection, tooltips, commands
├── options.lua       # Options panel (Interface)
├── localization.lua  # UI strings EN/FR
├── dictionary_en.lua # Abbreviation dictionary → EN
├── dictionary_fr.lua # Abbreviation dictionary → FR
├── logo.tga          # Logo (options + addon list)
└── README.md
```

## Future ideas

- **Map labels** : show abbreviations on the world map by appending them to existing zone names.
- **Filter by expansion** : restrict which abbreviations are available (e.g. Classic, TBC, WotLK, Retail).
- **Retail compatibility** : ensure full support and compatibility on Retail client (current Interface targets Retail; expansion filter would cover Classic variants).
- **Server language** : abbreviations could follow the server’s language (e.g. on EN servers SW = Stormwind; on FR servers HV = Hurlevent). Right now all abbreviations are English-only.

## Author

**Poro**  
GitHub: [github.com/poro/duolingwow](https://github.com/poro/duolingwow)
