# Duolingwow

## 1.1.0

### New: World of Warcraft: Forever
- The addon now runs on the Forever client, with its own dictionary:
  - the 9 new dungeons: Hall of Thanes (HoT), Ruins of Lordaeron (RoL), Excavation Site (ESW), City of Dalaran (CoD/Dal), The Drowned City (DC/TDC), Krol'dok Stronghold (KS), Alcaz Prison (AP), Blackmaw Hold (BMH), Shaper's Terrace (ShT)
  - raids: Barrow Deeps (BD), Hyjal Summit (Hyjal), Onyxia's Lair
  - battleground: Darkspear Islands
  - new zones: Riverglades, Mount Hyjal, Shen'dralas, Zephras Isle
  - returning dungeons with their Forever level ranges
- New "WoW Forever" extension filter (`/dl extension disable forever`).

### Anniversary
- Updated for patch 2.5.6 (the addon was flagged as out of date).

### Fixes
- Everyday words no longer become links: `if`, `set`, `live`, `mount`, `under`, `unter`... only match with the exact case (`IF`, `Live`, `Mount`).
- 17 wrong French and German names corrected (e.g. Mille pointes, Long-Guet, Le Méchanar, Le Noir Marécage, Der Tiefensumpf, Vorgebirge des Alten Hügellands, Höhle des Schlangenschreins, Kriegshymnenschlucht).
- Clicking a link no longer replaces the game's global link handler (avoids "action blocked" issues).
- The link color picker works on current clients.
- Correct GitHub link in the options.
