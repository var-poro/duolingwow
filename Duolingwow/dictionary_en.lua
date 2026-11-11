local ADDON_NAME, DL = ...

DL.Dictionary = DL.Dictionary or {}
DL.Dictionary.EN = {
  -- ============================================================================
  -- DUNGEONS - VANILLA
  -- ============================================================================
  
  -- Ragefire Chasm
  RFC = {
    name = "Ragefire Chasm",
    level = "13-18",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Horde",
  },
  
  -- Wailing Caverns
  WC = {
    name = "Wailing Caverns",
    level = "17-24",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Deadmines
  DM = {
    name = "Deadmines",
    level = "17-26",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  VC = {
    name = "Deadmines",
    level = "17-26",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  Deadmines = {
    name = "Deadmines",
    level = "17-26",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  
  -- Shadowfang Keep
  SFK = {
    name = "Shadowfang Keep",
    level = "22-30",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Blackfathom Deeps
  BFD = {
    name = "Blackfathom Deeps",
    level = "24-32",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Stockade
  Stocks = {
    name = "The Stockade",
    level = "24-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Stock = {
    name = "The Stockade",
    level = "24-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Stockade = {
    name = "The Stockade",
    level = "24-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  
  -- Gnomeregan
  Gnomer = {
    name = "Gnomeregan",
    level = "29-38",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Gnome = {
    name = "Gnomeregan",
    level = "29-38",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Gnomeregan = {
    name = "Gnomeregan",
    level = "29-38",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Razorfen Kraul
  RFK = {
    name = "Razorfen Kraul",
    level = "29-38",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Scarlet Monastery
  SM = {
    name = "Scarlet Monastery",
    level = "26-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  GY = {
    name = "Scarlet Monastery: Graveyard",
    level = "26-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMGY = {
    name = "Scarlet Monastery: Graveyard",
    level = "26-32",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Lib = {
    name = "Scarlet Monastery: Library",
    level = "29-39",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMLib = {
    name = "Scarlet Monastery: Library",
    level = "29-39",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Library = {
    name = "Scarlet Monastery: Library",
    level = "29-39",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Arm = {
    name = "Scarlet Monastery: Armory",
    level = "32-42",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMArm = {
    name = "Scarlet Monastery: Armory",
    level = "32-42",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Armory = {
    name = "Scarlet Monastery: Armory",
    level = "32-42",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Cath = {
    name = "Scarlet Monastery: Cathedral",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMCath = {
    name = "Scarlet Monastery: Cathedral",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Cathedral = {
    name = "Scarlet Monastery: Cathedral",
    level = "35-45",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- Razorfen Downs
  RFD = {
    name = "Razorfen Downs",
    level = "37-46",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Uldaman
  Ulda = {
    name = "Uldaman",
    level = "41-51",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Uldaman = {
    name = "Uldaman",
    level = "41-51",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Zul'Farrak
  ZF = {
    name = "Zul'Farrak",
    level = "44-54",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Maraudon
  Mara = {
    name = "Maraudon",
    level = "46-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Maraudon = {
    name = "Maraudon",
    level = "46-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Purple = {
    name = "Maraudon: Purple",
    level = "46-52",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Orange = {
    name = "Maraudon: Orange",
    level = "46-52",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Princess = {
    name = "Maraudon: Princess",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- Temple of Atal'Hakkar (Sunken Temple)
  ST = {
    name = "Temple of Atal'Hakkar",
    level = "50-56",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Sunken = {
    name = "Temple of Atal'Hakkar",
    level = "50-56",
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
  Arena = {
    name = "Blackrock Depths: Arena",
    level = "52-55",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Angerforge = {
    name = "Blackrock Depths: Angerforge",
    level = "54-57",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Emperor = {
    name = "Blackrock Depths: Emperor",
    level = "56-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Emp = {
    name = "Blackrock Depths: Emperor",
    level = "56-60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
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
  
  -- Blackrock Spire (generic)
  BRS = {
    name = "Blackrock Spire",
    level = "55-60",
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
  DMW = {
    name = "Dire Maul West",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  West = {
    name = "Dire Maul West",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  DMN = {
    name = "Dire Maul North",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  North = {
    name = "Dire Maul North",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Tribute = {
    name = "Dire Maul North: Tribute",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Trib = {
    name = "Dire Maul North: Tribute",
    level = "55-60",
    zone = "Kalimdor",
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
  
  -- ============================================================================
  -- DUNGEONS - THE BURNING CRUSADE
  -- ============================================================================
  
  -- Hellfire Ramparts
  Ramps = {
    name = "Hellfire Ramparts",
    level = "58-62",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Ramp = {
    name = "Hellfire Ramparts",
    level = "58-62",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  HFR = {
    name = "Hellfire Ramparts",
    level = "58-62",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Ramparts = {
    name = "Hellfire Ramparts",
    level = "58-62",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  HR = {
    name = "Hellfire Ramparts",
    level = "58-62",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Blood Furnace
  BF = {
    name = "The Blood Furnace",
    level = "59-63",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Furnace = {
    name = "The Blood Furnace",
    level = "59-63",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- Slave Pens
  SP = {
    name = "The Slave Pens",
    level = "60-64",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Pens = {
    name = "The Slave Pens",
    level = "60-64",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- Underbog
  UB = {
    name = "The Underbog",
    level = "61-65",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Underbog = {
    name = "The Underbog",
    level = "61-65",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Mana-Tombs
  MT = {
    name = "Mana-Tombs",
    level = "62-66",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Tombs = {
    name = "Mana-Tombs",
    level = "62-66",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  ManaTombs = {
    name = "Mana-Tombs",
    level = "62-66",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Auchenai Crypts
  AC = {
    name = "Auchenai Crypts",
    level = "63-67",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Crypts = {
    name = "Auchenai Crypts",
    level = "63-67",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- Old Hillsbrad Foothills
  OHB = {
    name = "Old Hillsbrad Foothills",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  OHF = {
    name = "Old Hillsbrad Foothills",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Escape = {
    name = "Old Hillsbrad Foothills",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Durnholde = {
    name = "Old Hillsbrad Foothills",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  OldHillsbrad = {
    name = "Old Hillsbrad Foothills",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  OH = {
    name = "Old Hillsbrad Foothills",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Sethekk Halls
  Seth = {
    name = "Sethekk Halls",
    level = "65-69",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SET = {
    name = "Sethekk Halls",
    level = "65-69",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Sethekk = {
    name = "Sethekk Halls",
    level = "65-69",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Steamvault
  SV = {
    name = "The Steamvault",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Steamvault = {
    name = "The Steamvault",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Shadow Labyrinth
  SL = {
    name = "Shadow Labyrinth",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Slabs = {
    name = "Shadow Labyrinth",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SLabs = {
    name = "Shadow Labyrinth",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Labs = {
    name = "Shadow Labyrinth",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Shadow = {
    name = "Shadow Labyrinth",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- Shattered Halls
  SH = {
    name = "The Shattered Halls",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Shattered = {
    name = "The Shattered Halls",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- The Mechanar
  Mech = {
    name = "The Mechanar",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  MECH = {
    name = "The Mechanar",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Mechanar = {
    name = "The Mechanar",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Botanica
  Bot = {
    name = "The Botanica",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  BOT = {
    name = "The Botanica",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Botanica = {
    name = "The Botanica",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Arcatraz
  Arc = {
    name = "The Arcatraz",
    level = "68-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  ARC = {
    name = "The Arcatraz",
    level = "68-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Arcatraz = {
    name = "The Arcatraz",
    level = "68-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Black Morass
  BM = {
    name = "The Black Morass",
    level = "68-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Morass = {
    name = "The Black Morass",
    level = "68-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Magisters' Terrace
  MgT = {
    name = "Magisters' Terrace",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  MrT = {
    name = "Magisters' Terrace",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Magisters = {
    name = "Magisters' Terrace",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Terrace = {
    name = "Magisters' Terrace",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  
  -- ============================================================================
  -- RAIDS - VANILLA
  -- ============================================================================
  
  -- Molten Core
  MC = {
    name = "Molten Core",
    level = "60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
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
  
  -- Blackwing Lair
  BWL = {
    name = "Blackwing Lair",
    level = "60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Zul'Gurub
  ZG = {
    name = "Zul'Gurub",
    level = "60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Ruins of Ahn'Qiraj
  AQ20 = {
    name = "Ruins of Ahn'Qiraj",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Temple of Ahn'Qiraj
  AQ40 = {
    name = "Temple of Ahn'Qiraj",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Naxxramas
  Naxx = {
    name = "Naxxramas",
    level = "60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Naxxramas = {
    name = "Naxxramas",
    level = "60",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- ============================================================================
  -- RAIDS - THE BURNING CRUSADE
  -- ============================================================================
  
  -- Karazhan
  Kara = {
    name = "Karazhan",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  KZ = {
    name = "Karazhan",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Karazhan = {
    name = "Karazhan",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Gruul's Lair
  Gruul = {
    name = "Gruul's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  GL = {
    name = "Gruul's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Gruuls = {
    name = "Gruul's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Magtheridon's Lair
  Mag = {
    name = "Magtheridon's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
    strict = true,
  },
  Mags = {
    name = "Magtheridon's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  ML = {
    name = "Magtheridon's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Magtheridon = {
    name = "Magtheridon's Lair",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Serpentshrine Cavern
  SSC = {
    name = "Serpentshrine Cavern",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Serpentshrine = {
    name = "Serpentshrine Cavern",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Tempest Keep: The Eye
  TK = {
    name = "Tempest Keep: The Eye",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  EyeTK = {
    name = "Tempest Keep: The Eye",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Hyjal Summit
  Hyjal = {
    name = "Hyjal Summit",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  MH = {
    name = "Hyjal Summit",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Mount = {
    name = "Hyjal Summit",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
    strict = true,
  },
  MountHyjal = {
    name = "Hyjal Summit",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Black Temple
  BT = {
    name = "Black Temple",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Temple = {
    name = "Black Temple",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
    strict = true,
  },
  BlackTemple = {
    name = "Black Temple",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Zul'Aman
  ZA = {
    name = "Zul'Aman",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Sunwell Plateau
  SWP = {
    name = "Sunwell Plateau",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Sunwell = {
    name = "Sunwell Plateau",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- ============================================================================
  -- BATTLEGROUNDS
  -- ============================================================================
  
  -- Warsong Gulch
  WSG = {
    name = "Warsong Gulch",
    level = "10-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Warsong = {
    name = "Warsong Gulch",
    level = "10-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Gulch = {
    name = "Warsong Gulch",
    level = "10-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },
  
  -- Arathi Basin
  AB = {
    name = "Arathi Basin",
    level = "20-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Basin = {
    name = "Arathi Basin",
    level = "20-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },
  
  -- Alterac Valley
  AV = {
    name = "Alterac Valley",
    level = "51-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Valley = {
    name = "Alterac Valley",
    level = "51-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },
  
  -- Eye of the Storm
  EOTS = {
    name = "Eye of the Storm",
    level = "61-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  EotS = {
    name = "Eye of the Storm",
    level = "61-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Eye = {
    name = "Eye of the Storm",
    level = "61-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },
  Storm = {
    name = "Eye of the Storm",
    level = "61-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },
  
  -- ============================================================================
  -- ARENAS
  -- ============================================================================
  
  -- Nagrand Arena
  NagrandArena = {
    name = "Nagrand Arena",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ARENA",
    faction = "Both",
  },
  
  -- Blade's Edge Arena
  BEA = {
    name = "Blade's Edge Arena",
    level = "70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ARENA",
    faction = "Both",
  },
  
  -- Ruins of Lordaeron
  RoL = {
    name = "Ruins of Lordaeron",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "ARENA",
    faction = "Both",
  },
  
  -- ============================================================================
  -- CITIES - ALLIANCE
  -- ============================================================================
  
  -- Stormwind
  SW = {
    name = "Stormwind City",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Stormwind = {
    name = "Stormwind City",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  
  -- Ironforge
  IF = {
    name = "Ironforge",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
    strict = true,
  },
  
  -- Darnassus
  Darn = {
    name = "Darnassus",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
    strict = true,
  },
  Darna = {
    name = "Darnassus",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Darnassus = {
    name = "Darnassus",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  
  -- The Exodar
  Exo = {
    name = "The Exodar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Exodar = {
    name = "The Exodar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Alliance",
  },
  
  -- ============================================================================
  -- CITIES - HORDE
  -- ============================================================================
  
  -- Orgrimmar
  Org = {
    name = "Orgrimmar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Orgri = {
    name = "Orgrimmar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  OG = {
    name = "Orgrimmar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Orgrimmar = {
    name = "Orgrimmar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Undercity
  UC = {
    name = "Undercity",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Under = {
    name = "Undercity",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Unter = {
    name = "Undercity",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Undercity = {
    name = "Undercity",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Stonard
  Stonard = {
    name = "Stonard",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Thunder Bluff
  TB = {
    name = "Thunder Bluff",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Thunder = {
    name = "Thunder Bluff",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  ThunderBluff = {
    name = "Thunder Bluff",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Silvermoon City
  SMC = {
    name = "Silvermoon City",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Horde",
  },
  Silver = {
    name = "Silvermoon City",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Silvermoon = {
    name = "Silvermoon City",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- ============================================================================
  -- CITIES - NEUTRAL
  -- ============================================================================
  
  -- Shattrath City
  Shatt = {
    name = "Shattrath City",
    level = "1-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  Shat = {
    name = "Shattrath City",
    level = "1-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  Shattrath = {
    name = "Shattrath City",
    level = "1-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Booty Bay
  BB = {
    name = "Booty Bay",
    level = "1-70",
    zone = "Eastern Kingdoms",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Gadgetzan
  Gadget = {
    name = "Gadgetzan",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  Gadgetzan = {
    name = "Gadgetzan",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Ratchet
  Ratchet = {
    name = "Ratchet",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Everlook
  Everlook = {
    name = "Everlook",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Cenarion Hold
  CH = {
    name = "Cenarion Hold",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Area 52
  Area52 = {
    name = "Area 52",
    level = "1-70",
    zone = "Outland",
    extension = "The Burning Crusade",
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
  
  -- Caverns of Time
  COT = {
    name = "Caverns of Time",
    level = "64-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  CoT = {
    name = "Caverns of Time",
    level = "64-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Coilfang Reservoir
  CR = {
    name = "Coilfang Reservoir",
    level = "60-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Coilfang = {
    name = "Coilfang Reservoir",
    level = "60-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Auchindoun
  AUCH = {
    name = "Auchindoun",
    level = "62-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Auch = {
    name = "Auchindoun",
    level = "62-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Auchindoun = {
    name = "Auchindoun",
    level = "62-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Hellfire Citadel
  HC = {
    name = "Hellfire Citadel",
    level = "58-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  HFC = {
    name = "Hellfire Citadel",
    level = "58-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Tempest Keep (complex)
  TempestKeep = {
    name = "Tempest Keep",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- ============================================================================
  -- ZONES - EASTERN KINGDOMS (VANILLA)
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
  
  -- ============================================================================
  -- ZONES - KALIMDOR (VANILLA)
  -- ============================================================================
  
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
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- ============================================================================
  -- ZONES - EASTERN KINGDOMS (THE BURNING CRUSADE)
  -- ============================================================================
  
  -- Eversong Woods
  Eversong = {
    name = "Eversong Woods",
    level = "1-10",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Ghostlands
  Ghostlands = {
    name = "Ghostlands",
    level = "10-20",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Isle of Quel'Danas
  IoQD = {
    name = "Isle of Quel'Danas",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  QuelDanas = {
    name = "Isle of Quel'Danas",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  SunwellIsle = {
    name = "Isle of Quel'Danas",
    level = "70",
    zone = "Eastern Kingdoms",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- ============================================================================
  -- ZONES - KALIMDOR (THE BURNING CRUSADE)
  -- ============================================================================
  
  -- Azuremyst Isle
  Azuremyst = {
    name = "Azuremyst Isle",
    level = "1-10",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Bloodmyst Isle
  Bloodmyst = {
    name = "Bloodmyst Isle",
    level = "10-20",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- ============================================================================
  -- ZONES - OUTLAND (THE BURNING CRUSADE)
  -- ============================================================================
  
  -- Hellfire Peninsula
  HFP = {
    name = "Hellfire Peninsula",
    level = "58-63",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Hellfire = {
    name = "Hellfire Peninsula",
    level = "58-63",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Zangarmarsh
  Zangar = {
    name = "Zangarmarsh",
    level = "60-64",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Zangarmarsh = {
    name = "Zangarmarsh",
    level = "60-64",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Terokkar Forest
  Terokkar = {
    name = "Terokkar Forest",
    level = "62-65",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Nagrand
  Nagrand = {
    name = "Nagrand",
    level = "64-67",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Blade's Edge Mountains
  BEM = {
    name = "Blade's Edge Mountains",
    level = "65-68",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Blade = {
    name = "Blade's Edge Mountains",
    level = "65-68",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Blades = {
    name = "Blade's Edge Mountains",
    level = "65-68",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  BladesEdge = {
    name = "Blade's Edge Mountains",
    level = "65-68",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Netherstorm
  Netherstorm = {
    name = "Netherstorm",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  NS = {
    name = "Netherstorm",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Nether = {
    name = "Netherstorm",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  
  -- Shadowmoon Valley
  SMV = {
    name = "Shadowmoon Valley",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Shadowmoon = {
    name = "Shadowmoon Valley",
    level = "67-70",
    zone = "Outland",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
}
