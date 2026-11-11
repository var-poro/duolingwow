local ADDON_NAME, DL = ...

-- WoW Forever dataset (loaded only by Duolingwow_Camelot.toc).
-- Generated from a single source table so EN/FR/DE stay consistent.
DL.Dictionary = DL.Dictionary or {}
DL.Dictionary.EN = {
  -- ============================================================================
  -- DUNGEONS - RETURNING (levels revised for Forever)
  -- ============================================================================

  -- Ragefire Chasm
  RFC = {
    name = "Ragefire Chasm",
    level = "13-19",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Horde",
  },

  -- Deadmines
  DM = {
    name = "Deadmines",
    level = "18-24",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  VC = {
    name = "Deadmines",
    level = "18-24",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  Deadmines = {
    name = "Deadmines",
    level = "18-24",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },

  -- Wailing Caverns
  WC = {
    name = "Wailing Caverns",
    level = "19-25",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Shadowfang Keep
  SFK = {
    name = "Shadowfang Keep",
    level = "23-29",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackfathom Deeps
  BFD = {
    name = "Blackfathom Deeps",
    level = "25-31",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- The Stockade
  Stocks = {
    name = "The Stockade",
    level = "26-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Stock = {
    name = "The Stockade",
    level = "26-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Stockade = {
    name = "The Stockade",
    level = "26-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },

  -- Razorfen Kraul
  RFK = {
    name = "Razorfen Kraul",
    level = "30-36",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Gnomeregan
  Gnomer = {
    name = "Gnomeregan",
    level = "31-37",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Gnome = {
    name = "Gnomeregan",
    level = "31-37",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Gnomeregan = {
    name = "Gnomeregan",
    level = "31-37",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery
  SM = {
    name = "Scarlet Monastery",
    level = "31-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery: Graveyard
  GY = {
    name = "Scarlet Monastery: Graveyard",
    level = "31-37",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMGY = {
    name = "Scarlet Monastery: Graveyard",
    level = "31-37",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery: Library
  Lib = {
    name = "Scarlet Monastery: Library",
    level = "34-40",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMLib = {
    name = "Scarlet Monastery: Library",
    level = "34-40",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Library = {
    name = "Scarlet Monastery: Library",
    level = "34-40",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Scarlet Monastery: Armory
  Arm = {
    name = "Scarlet Monastery: Armory",
    level = "37-43",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMArm = {
    name = "Scarlet Monastery: Armory",
    level = "37-43",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Armory = {
    name = "Scarlet Monastery: Armory",
    level = "37-43",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Razorfen Downs
  RFD = {
    name = "Razorfen Downs",
    level = "38-44",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery: Cathedral
  Cath = {
    name = "Scarlet Monastery: Cathedral",
    level = "39-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMCath = {
    name = "Scarlet Monastery: Cathedral",
    level = "39-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Cathedral = {
    name = "Scarlet Monastery: Cathedral",
    level = "39-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Uldaman
  Uld = {
    name = "Uldaman",
    level = "44-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Ulda = {
    name = "Uldaman",
    level = "44-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Uldaman = {
    name = "Uldaman",
    level = "44-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Zul'Farrak
  ZF = {
    name = "Zul'Farrak",
    level = "45-51",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Maraudon
  Mara = {
    name = "Maraudon",
    level = "48-54",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Maraudon = {
    name = "Maraudon",
    level = "48-54",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Maraudon: Purple
  Purple = {
    name = "Maraudon: Purple",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Maraudon: Orange
  Orange = {
    name = "Maraudon: Orange",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Maraudon: Princess
  Princess = {
    name = "Maraudon: Princess",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Temple of Atal'Hakkar
  ST = {
    name = "Temple of Atal'Hakkar",
    level = "52-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Sunken = {
    name = "Temple of Atal'Hakkar",
    level = "52-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackrock Depths
  BRD = {
    name = "Blackrock Depths",
    level = "52-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackrock Depths: Arena
  Arena = {
    name = "Blackrock Depths: Arena",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Blackrock Depths: Angerforge
  Angerforge = {
    name = "Blackrock Depths: Angerforge",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackrock Depths: Emperor
  Emperor = {
    name = "Blackrock Depths: Emperor",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Emp = {
    name = "Blackrock Depths: Emperor",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Dire Maul
  DireMaul = {
    name = "Dire Maul",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Dire Maul East
  DME = {
    name = "Dire Maul East",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  East = {
    name = "Dire Maul East",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Lower Blackrock Spire
  LBRS = {
    name = "Lower Blackrock Spire",
    level = "55-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Lower = {
    name = "Lower Blackrock Spire",
    level = "55-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Upper Blackrock Spire
  UBRS = {
    name = "Upper Blackrock Spire",
    level = "55-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Upper = {
    name = "Upper Blackrock Spire",
    level = "55-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Blackrock Spire
  BRS = {
    name = "Blackrock Spire",
    level = "55-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Dire Maul West
  DMW = {
    name = "Dire Maul West",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  West = {
    name = "Dire Maul West",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Dire Maul North
  DMN = {
    name = "Dire Maul North",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  North = {
    name = "Dire Maul North",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Dire Maul North: Tribute
  Tribute = {
    name = "Dire Maul North: Tribute",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Trib = {
    name = "Dire Maul North: Tribute",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scholomance
  Scholo = {
    name = "Scholomance",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Schol = {
    name = "Scholomance",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Scholomance = {
    name = "Scholomance",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Stratholme
  Strat = {
    name = "Stratholme",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Strath = {
    name = "Stratholme",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Stratholme = {
    name = "Stratholme",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Stratholme: Live
  StratLive = {
    name = "Stratholme: Live",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Live = {
    name = "Stratholme: Live",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Scarlet = {
    name = "Stratholme: Live",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Stratholme: Undead
  StratUD = {
    name = "Stratholme: Undead",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  UD = {
    name = "Stratholme: Undead",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Undead = {
    name = "Stratholme: Undead",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Baron = {
    name = "Stratholme: Undead",
    level = "58-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- ============================================================================
  -- DUNGEONS - NEW IN FOREVER
  -- ============================================================================

  -- Hall of Thanes
  HoT = {
    name = "Hall of Thanes",
    level = "13-18",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Thanes = {
    name = "Hall of Thanes",
    level = "13-18",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  HallOfThanes = {
    name = "Hall of Thanes",
    level = "13-18",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },

  -- Ruins of Lordaeron
  RoL = {
    name = "Ruins of Lordaeron",
    level = "15-20",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Horde",
  },
  Lordaeron = {
    name = "Ruins of Lordaeron",
    level = "15-20",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Horde",
  },
  RuinsOfLordaeron = {
    name = "Ruins of Lordaeron",
    level = "15-20",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Horde",
  },

  -- Excavation Site
  ESW = {
    name = "Excavation Site",
    level = "24-29",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Excavation = {
    name = "Excavation Site",
    level = "24-29",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  ExcavationSite = {
    name = "Excavation Site",
    level = "24-29",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- City of Dalaran
  CoD = {
    name = "City of Dalaran",
    level = "28-33",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Dal = {
    name = "City of Dalaran",
    level = "28-33",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  CityOfDalaran = {
    name = "City of Dalaran",
    level = "28-33",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- The Drowned City
  DC = {
    name = "The Drowned City",
    level = "35-40",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  TDC = {
    name = "The Drowned City",
    level = "35-40",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Drowned = {
    name = "The Drowned City",
    level = "35-40",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  DrownedCity = {
    name = "The Drowned City",
    level = "35-40",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Krol'dok Stronghold
  KS = {
    name = "Krol'dok Stronghold",
    level = "40-45",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Krol = {
    name = "Krol'dok Stronghold",
    level = "40-45",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Kroldok = {
    name = "Krol'dok Stronghold",
    level = "40-45",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Alcaz Prison
  AP = {
    name = "Alcaz Prison",
    level = "48-53",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Alcaz = {
    name = "Alcaz Prison",
    level = "48-53",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  AlcazPrison = {
    name = "Alcaz Prison",
    level = "48-53",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackmaw Hold
  BMH = {
    name = "Blackmaw Hold",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Blackmaw = {
    name = "Blackmaw Hold",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  BlackmawHold = {
    name = "Blackmaw Hold",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Shaper's Terrace
  ShT = {
    name = "Shaper's Terrace",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Shaper = {
    name = "Shaper's Terrace",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Shapers = {
    name = "Shaper's Terrace",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  ShapersTerrace = {
    name = "Shaper's Terrace",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- ============================================================================
  -- RAIDS
  -- ============================================================================

  -- Barrow Deeps
  BD = {
    name = "Barrow Deeps",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },
  Barrow = {
    name = "Barrow Deeps",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
    strict = true,
  },
  BarrowDeeps = {
    name = "Barrow Deeps",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },

  -- Hyjal Summit
  Hyjal = {
    name = "Hyjal Summit",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },
  HyjalSummit = {
    name = "Hyjal Summit",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },

  -- Onyxia's Lair
  Ony = {
    name = "Onyxia's Lair",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Oni = {
    name = "Onyxia's Lair",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  ONY = {
    name = "Onyxia's Lair",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Onyxia = {
    name = "Onyxia's Lair",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },

  -- ============================================================================
  -- BATTLEGROUNDS
  -- ============================================================================

  -- Darkspear Islands
  Darkspear = {
    name = "Darkspear Islands",
    level = "30-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  DarkspearIslands = {
    name = "Darkspear Islands",
    level = "30-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },

  -- Warsong Gulch
  WSG = {
    name = "Warsong Gulch",
    level = "10-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Warsong = {
    name = "Warsong Gulch",
    level = "10-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Gulch = {
    name = "Warsong Gulch",
    level = "10-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },

  -- Arathi Basin
  AB = {
    name = "Arathi Basin",
    level = "20-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Basin = {
    name = "Arathi Basin",
    level = "20-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },

  -- Alterac Valley
  AV = {
    name = "Alterac Valley",
    level = "51-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Valley = {
    name = "Alterac Valley",
    level = "51-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },

  -- ============================================================================
  -- CITIES
  -- ============================================================================

  -- Stormwind City
  SW = {
    name = "Stormwind City",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Stormwind = {
    name = "Stormwind City",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },

  -- Ironforge
  IF = {
    name = "Ironforge",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
    strict = true,
  },

  -- Darnassus
  Darn = {
    name = "Darnassus",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
    strict = true,
  },
  Darna = {
    name = "Darnassus",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Darnassus = {
    name = "Darnassus",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },

  -- Orgrimmar
  Org = {
    name = "Orgrimmar",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Orgri = {
    name = "Orgrimmar",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  OG = {
    name = "Orgrimmar",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Orgrimmar = {
    name = "Orgrimmar",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Undercity
  UC = {
    name = "Undercity",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Under = {
    name = "Undercity",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Unter = {
    name = "Undercity",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Undercity = {
    name = "Undercity",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Thunder Bluff
  TB = {
    name = "Thunder Bluff",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Thunder = {
    name = "Thunder Bluff",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  ThunderBluff = {
    name = "Thunder Bluff",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Stonard
  Stonard = {
    name = "Stonard",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Dalaran
  Dalaran = {
    name = "Dalaran",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Booty Bay
  BB = {
    name = "Booty Bay",
    level = "1-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Gadgetzan
  Gadget = {
    name = "Gadgetzan",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  Gadgetzan = {
    name = "Gadgetzan",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Ratchet
  Ratchet = {
    name = "Ratchet",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Everlook
  Everlook = {
    name = "Everlook",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Cenarion Hold
  CH = {
    name = "Cenarion Hold",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- ============================================================================
  -- DUNGEON/RAID HUBS
  -- ============================================================================

  -- Blackrock Mountain
  BRM = {
    name = "Blackrock Mountain",
    level = "52-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- ============================================================================
  -- ZONES - RETURNING (Classic level ranges)
  -- ============================================================================

  -- Elwynn Forest
  Elwynn = {
    name = "Elwynn Forest",
    level = "1-10",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Dun Morogh
  DunMorogh = {
    name = "Dun Morogh",
    level = "1-10",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Tirisfal Glades
  Tirisfal = {
    name = "Tirisfal Glades",
    level = "1-10",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Westfall
  Westfall = {
    name = "Westfall",
    level = "10-20",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Loch Modan
  Loch = {
    name = "Loch Modan",
    level = "10-20",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  LochModan = {
    name = "Loch Modan",
    level = "10-20",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Silverpine Forest
  Silverpine = {
    name = "Silverpine Forest",
    level = "10-20",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Redridge Mountains
  Redridge = {
    name = "Redridge Mountains",
    level = "15-25",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Duskwood
  Duskwood = {
    name = "Duskwood",
    level = "18-30",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Wetlands
  Wetlands = {
    name = "Wetlands",
    level = "20-30",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Hillsbrad Foothills
  Hillsbrad = {
    name = "Hillsbrad Foothills",
    level = "20-30",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Alterac Mountains
  Alterac = {
    name = "Alterac Mountains",
    level = "30-40",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Arathi Highlands
  Arathi = {
    name = "Arathi Highlands",
    level = "30-40",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Stranglethorn Vale
  STV = {
    name = "Stranglethorn Vale",
    level = "30-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Stranglethorn = {
    name = "Stranglethorn Vale",
    level = "30-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Badlands
  Badlands = {
    name = "Badlands",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Swamp of Sorrows
  Swamp = {
    name = "Swamp of Sorrows",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  SoS = {
    name = "Swamp of Sorrows",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- The Hinterlands
  Hinterlands = {
    name = "The Hinterlands",
    level = "40-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Hinter = {
    name = "The Hinterlands",
    level = "40-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },

  -- Searing Gorge
  Searing = {
    name = "Searing Gorge",
    level = "43-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Gorge = {
    name = "Searing Gorge",
    level = "43-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  SearingGorge = {
    name = "Searing Gorge",
    level = "43-50",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Blasted Lands
  Blasted = {
    name = "Blasted Lands",
    level = "45-55",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  BlastedLands = {
    name = "Blasted Lands",
    level = "45-55",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Burning Steppes
  Burning = {
    name = "Burning Steppes",
    level = "50-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Steppes = {
    name = "Burning Steppes",
    level = "50-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  BurningSteppes = {
    name = "Burning Steppes",
    level = "50-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Western Plaguelands
  WPL = {
    name = "Western Plaguelands",
    level = "51-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  WestPlague = {
    name = "Western Plaguelands",
    level = "51-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Plague = {
    name = "Western Plaguelands",
    level = "51-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Plaguelands = {
    name = "Western Plaguelands",
    level = "51-58",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Eastern Plaguelands
  EPL = {
    name = "Eastern Plaguelands",
    level = "53-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  EastPlague = {
    name = "Eastern Plaguelands",
    level = "53-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Deadwind Pass
  Deadwind = {
    name = "Deadwind Pass",
    level = "55-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Teldrassil
  Teldrassil = {
    name = "Teldrassil",
    level = "1-10",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Mulgore
  Mulgore = {
    name = "Mulgore",
    level = "1-10",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Durotar
  Durotar = {
    name = "Durotar",
    level = "1-10",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Darkshore
  Darkshore = {
    name = "Darkshore",
    level = "10-20",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- The Barrens
  Barrens = {
    name = "The Barrens",
    level = "10-33",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Ashenvale
  Ashenvale = {
    name = "Ashenvale",
    level = "18-30",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Stonetalon Mountains
  Stonetalon = {
    name = "Stonetalon Mountains",
    level = "15-27",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Desolace
  Desolace = {
    name = "Desolace",
    level = "30-40",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Thousand Needles
  Needles = {
    name = "Thousand Needles",
    level = "25-35",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  ThousandNeedles = {
    name = "Thousand Needles",
    level = "25-35",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Dustwallow Marsh
  Dustwallow = {
    name = "Dustwallow Marsh",
    level = "35-45",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Marsh = {
    name = "Dustwallow Marsh",
    level = "35-45",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },

  -- Feralas
  Feralas = {
    name = "Feralas",
    level = "40-50",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Tanaris
  Tanaris = {
    name = "Tanaris",
    level = "40-50",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Un'Goro Crater
  UnGoro = {
    name = "Un'Goro Crater",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Ungoro = {
    name = "Un'Goro Crater",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Crater = {
    name = "Un'Goro Crater",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },

  -- Felwood
  Felwood = {
    name = "Felwood",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Azshara
  Azshara = {
    name = "Azshara",
    level = "45-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Silithus
  Silithus = {
    name = "Silithus",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Winterspring
  Winterspring = {
    name = "Winterspring",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Moonglade
  Moonglade = {
    name = "Moonglade",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- ============================================================================
  -- ZONES - NEW IN FOREVER
  -- ============================================================================

  -- Riverglades
  Riverglades = {
    name = "Riverglades",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Mount Hyjal
  MountHyjal = {
    name = "Mount Hyjal",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Shen'dralas
  Shendralas = {
    name = "Shen'dralas",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Zephras Isle
  Zephras = {
    name = "Zephras Isle",
    level = "1-12",
    zone = "Skywall",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },
  ZephrasIsle = {
    name = "Zephras Isle",
    level = "1-12",
    zone = "Skywall",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },

}
