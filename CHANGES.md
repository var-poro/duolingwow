# Duolingwow

## 1.1.2

### Fewer false links in chat
- Accented words are no longer cut in two: German "später" or "Stärke" and French "château" no longer show a link in the middle of the word.
- Short abbreviations that are also chat words only become links in capitals: `mt`, `bm`, `sp`, `ml`, `mh`, `gy`, `ud`, `ch`, `ns`, `hr`, `bb`, `wc`, `ab` (German "ab"), plus `bot` and `arc`. `MT`, `SP`, `WC`, `BOT`... still work.
- Removed abbreviations that meant something else in chat: `HC` (heroic, not Hellfire Citadel), `OH` ("oh ok"), `GL` ("gl hf"), `Mount` ("Swift Mount"), `Temple` ("Sunken Temple"), `Arena` (PvP arena, not the BRD arena).
- `Scarlet` now points to the Scarlet Monastery instead of Stratholme.
- Emotes such as /wave are no longer scanned: a player named like an abbreviation (e.g. "Kara") could break the chat line.

### Fixes
- The tooltip now has its own window (movable, closes with Escape or by clicking the link again) and no longer changes the look of item tooltips.
- Corrected names: Armurerie (FR, Scarlet Monastery), Forgehargne (FR) and Zornesschmied (DE) for Angerforge in Blackrock Depths. Scarlet Monastery Graveyard level range is 26-36.
- Command messages and the tooltip level line are now fully translated in French and German.
- Multi-word values work in commands, e.g. `/dl type disable Champ de bataille`.

## 1.1.1

- Now also published on CurseForge, for both Anniversary and WoW Forever. No changes in game.

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
