local ADDON_NAME, DL = ...

-- WoW Forever dataset (loaded only by Duolingwow_Camelot.toc).
-- Generated from a single source table so EN/FR/DE stay consistent.
DL.Dictionary = DL.Dictionary or {}
DL.Dictionary.FR = {
  -- ============================================================================
  -- DUNGEONS - RETURNING (levels revised for Forever)
  -- ============================================================================

  -- Ragefire Chasm
  RFC = {
    name = "Gouffre de Ragefeu",
    level = "13-19",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Horde",
  },

  -- Deadmines
  DM = {
    name = "Les Mortemines",
    level = "18-24",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  VC = {
    name = "Les Mortemines",
    level = "18-24",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  Deadmines = {
    name = "Les Mortemines",
    level = "18-24",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },

  -- Wailing Caverns
  WC = {
    name = "Cavernes des Lamentations",
    level = "19-25",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Shadowfang Keep
  SFK = {
    name = "Donjon d'Ombrecroc",
    level = "23-29",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackfathom Deeps
  BFD = {
    name = "Profondeurs de Brassenoire",
    level = "25-31",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- The Stockade
  Stocks = {
    name = "La Prison",
    level = "26-32",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Stock = {
    name = "La Prison",
    level = "26-32",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Stockade = {
    name = "La Prison",
    level = "26-32",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },

  -- Razorfen Kraul
  RFK = {
    name = "Kraal de Tranchebauge",
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
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Gnome = {
    name = "Gnomeregan",
    level = "31-37",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Gnomeregan = {
    name = "Gnomeregan",
    level = "31-37",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery
  SM = {
    name = "Monastère écarlate",
    level = "31-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Scarlet = {
    name = "Monastère écarlate",
    level = "31-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Scarlet Monastery: Graveyard
  GY = {
    name = "Monastère écarlate : Cimetière",
    level = "31-37",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMGY = {
    name = "Monastère écarlate : Cimetière",
    level = "31-37",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery: Library
  Lib = {
    name = "Monastère écarlate : Bibliothèque",
    level = "34-40",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMLib = {
    name = "Monastère écarlate : Bibliothèque",
    level = "34-40",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Library = {
    name = "Monastère écarlate : Bibliothèque",
    level = "34-40",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Scarlet Monastery: Armory
  Arm = {
    name = "Monastère écarlate : Armurerie",
    level = "37-43",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  SMArm = {
    name = "Monastère écarlate : Armurerie",
    level = "37-43",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Armory = {
    name = "Monastère écarlate : Armurerie",
    level = "37-43",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Razorfen Downs
  RFD = {
    name = "Souilles de Tranchebauge",
    level = "38-44",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Scarlet Monastery: Cathedral
  Cath = {
    name = "Monastère écarlate : Cathédrale",
    level = "39-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMCath = {
    name = "Monastère écarlate : Cathédrale",
    level = "39-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Cathedral = {
    name = "Monastère écarlate : Cathédrale",
    level = "39-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Uldaman
  Uld = {
    name = "Uldaman",
    level = "44-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Ulda = {
    name = "Uldaman",
    level = "44-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Uldaman = {
    name = "Uldaman",
    level = "44-50",
    zone = "Royaumes de l'Est",
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
    name = "Maraudon : Violet",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Maraudon: Orange
  Orange = {
    name = "Maraudon : Orange",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Maraudon: Princess
  Princess = {
    name = "Maraudon : Princesse",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Temple of Atal'Hakkar
  ST = {
    name = "Temple d'Atal'Hakkar",
    level = "52-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Sunken = {
    name = "Temple d'Atal'Hakkar",
    level = "52-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackrock Depths
  BRD = {
    name = "Profondeurs de Rochenoire",
    level = "52-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackrock Depths: Angerforge
  Angerforge = {
    name = "Profondeurs de Rochenoire : Forgehargne",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackrock Depths: Emperor
  Emperor = {
    name = "Profondeurs de Rochenoire : Empereur",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Emp = {
    name = "Profondeurs de Rochenoire : Empereur",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Dire Maul
  DireMaul = {
    name = "Hache-Tripes",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Dire Maul East
  DME = {
    name = "Hache-Tripes est",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  East = {
    name = "Hache-Tripes est",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Lower Blackrock Spire
  LBRS = {
    name = "Pic Rochenoire inférieur",
    level = "55-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Lower = {
    name = "Pic Rochenoire inférieur",
    level = "55-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Upper Blackrock Spire
  UBRS = {
    name = "Pic Rochenoire supérieur",
    level = "55-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Upper = {
    name = "Pic Rochenoire supérieur",
    level = "55-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Blackrock Spire
  BRS = {
    name = "Pic Rochenoire",
    level = "55-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Dire Maul West
  DMW = {
    name = "Hache-Tripes ouest",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  West = {
    name = "Hache-Tripes ouest",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Dire Maul North
  DMN = {
    name = "Hache-Tripes nord",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  North = {
    name = "Hache-Tripes nord",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Dire Maul North: Tribute
  Tribute = {
    name = "Hache-Tripes nord : Hommage",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Trib = {
    name = "Hache-Tripes nord : Hommage",
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
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Schol = {
    name = "Scholomance",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Scholomance = {
    name = "Scholomance",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Stratholme
  Strat = {
    name = "Stratholme",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Strath = {
    name = "Stratholme",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Stratholme = {
    name = "Stratholme",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Stratholme: Live
  StratLive = {
    name = "Stratholme : Vivant",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Live = {
    name = "Stratholme : Vivant",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },

  -- Stratholme: Undead
  StratUD = {
    name = "Stratholme : Mort-vivant",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  UD = {
    name = "Stratholme : Mort-vivant",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Undead = {
    name = "Stratholme : Mort-vivant",
    level = "58-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Baron = {
    name = "Stratholme : Mort-vivant",
    level = "58-60",
    zone = "Royaumes de l'Est",
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
    name = "La salle des Thanes",
    level = "13-18",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Alliance",
    strict = true,
  },
  Thanes = {
    name = "La salle des Thanes",
    level = "13-18",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  HallOfThanes = {
    name = "La salle des Thanes",
    level = "13-18",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },

  -- Ruins of Lordaeron
  RoL = {
    name = "Ruines de Lordaeron",
    level = "15-20",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Horde",
  },
  Lordaeron = {
    name = "Ruines de Lordaeron",
    level = "15-20",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Horde",
  },
  RuinsOfLordaeron = {
    name = "Ruines de Lordaeron",
    level = "15-20",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Horde",
  },

  -- Excavation Site
  ESW = {
    name = "Excavations",
    level = "24-29",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Excavation = {
    name = "Excavations",
    level = "24-29",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  ExcavationSite = {
    name = "Excavations",
    level = "24-29",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- City of Dalaran
  CoD = {
    name = "Cité de Dalaran",
    level = "28-33",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Dal = {
    name = "Cité de Dalaran",
    level = "28-33",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  CityOfDalaran = {
    name = "Cité de Dalaran",
    level = "28-33",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- The Drowned City
  DC = {
    name = "La cité Submergée",
    level = "35-40",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  TDC = {
    name = "La cité Submergée",
    level = "35-40",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Drowned = {
    name = "La cité Submergée",
    level = "35-40",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  DrownedCity = {
    name = "La cité Submergée",
    level = "35-40",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Krol'dok Stronghold
  KS = {
    name = "Bastion Krol'dok",
    level = "40-45",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Krol = {
    name = "Bastion Krol'dok",
    level = "40-45",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Kroldok = {
    name = "Bastion Krol'dok",
    level = "40-45",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Alcaz Prison
  AP = {
    name = "Prison d'Alcaz",
    level = "48-53",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Alcaz = {
    name = "Prison d'Alcaz",
    level = "48-53",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  AlcazPrison = {
    name = "Prison d'Alcaz",
    level = "48-53",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Blackmaw Hold
  BMH = {
    name = "Repaire des Noiregueules",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Blackmaw = {
    name = "Repaire des Noiregueules",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  BlackmawHold = {
    name = "Repaire des Noiregueules",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },

  -- Shaper's Terrace
  ShT = {
    name = "La terrasse du Façonneur",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Shaper = {
    name = "La terrasse du Façonneur",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
    strict = true,
  },
  Shapers = {
    name = "La terrasse du Façonneur",
    level = "58-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  ShapersTerrace = {
    name = "La terrasse du Façonneur",
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
    name = "Profondeurs des Saisons",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },
  Barrow = {
    name = "Profondeurs des Saisons",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
    strict = true,
  },
  BarrowDeeps = {
    name = "Profondeurs des Saisons",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },

  -- Hyjal Summit
  Hyjal = {
    name = "Sommet d'Hyjal",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },
  HyjalSummit = {
    name = "Sommet d'Hyjal",
    level = "60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "RAID",
    faction = "Both",
  },

  -- Onyxia's Lair
  Ony = {
    name = "Repaire d'Onyxia",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Oni = {
    name = "Repaire d'Onyxia",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  ONY = {
    name = "Repaire d'Onyxia",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Onyxia = {
    name = "Repaire d'Onyxia",
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
    name = "Îles des Sombrelances",
    level = "30-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  DarkspearIslands = {
    name = "Îles des Sombrelances",
    level = "30-60",
    zone = "Kalimdor",
    extension = "Forever",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },

  -- Warsong Gulch
  WSG = {
    name = "Goulet des Chanteguerres",
    level = "10-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Warsong = {
    name = "Goulet des Chanteguerres",
    level = "10-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Gulch = {
    name = "Goulet des Chanteguerres",
    level = "10-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },

  -- Arathi Basin
  AB = {
    name = "Bassin d'Arathi",
    level = "20-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },
  Basin = {
    name = "Bassin d'Arathi",
    level = "20-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
    strict = true,
  },

  -- Alterac Valley
  AV = {
    name = "Vallée d'Alterac",
    level = "51-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Valley = {
    name = "Vallée d'Alterac",
    level = "51-60",
    zone = "Royaumes de l'Est",
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
    name = "Ville de Hurlevent",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Stormwind = {
    name = "Ville de Hurlevent",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },

  -- Ironforge
  IF = {
    name = "Forgefer",
    level = "1-60",
    zone = "Royaumes de l'Est",
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
    name = "Fossoyeuse",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Under = {
    name = "Fossoyeuse",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Unter = {
    name = "Fossoyeuse",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  Undercity = {
    name = "Fossoyeuse",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Thunder Bluff
  TB = {
    name = "Les Pitons du Tonnerre",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Thunder = {
    name = "Les Pitons du Tonnerre",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
    strict = true,
  },
  ThunderBluff = {
    name = "Les Pitons du Tonnerre",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Stonard
  Stonard = {
    name = "Pierrêche",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },

  -- Dalaran
  Dalaran = {
    name = "Dalaran",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Booty Bay
  BB = {
    name = "Baie du Butin",
    level = "1-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
    strict = true,
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
    name = "Cabestan",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Everlook
  Everlook = {
    name = "Long-Guet",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
  },

  -- Cenarion Hold
  CH = {
    name = "Fort Cénarien",
    level = "1-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Both",
    strict = true,
  },

  -- ============================================================================
  -- DUNGEON/RAID HUBS
  -- ============================================================================

  -- Blackrock Mountain
  BRM = {
    name = "Mont Rochenoire",
    level = "52-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- ============================================================================
  -- ZONES - RETURNING (Classic level ranges)
  -- ============================================================================

  -- Elwynn Forest
  Elwynn = {
    name = "Forêt d'Elwynn",
    level = "1-10",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Dun Morogh
  DunMorogh = {
    name = "Dun Morogh",
    level = "1-10",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Tirisfal Glades
  Tirisfal = {
    name = "Clairières de Tirisfal",
    level = "1-10",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Westfall
  Westfall = {
    name = "Marche de l'Ouest",
    level = "10-20",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Loch Modan
  Loch = {
    name = "Loch Modan",
    level = "10-20",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  LochModan = {
    name = "Loch Modan",
    level = "10-20",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Silverpine Forest
  Silverpine = {
    name = "Forêt des Pins argentés",
    level = "10-20",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Redridge Mountains
  Redridge = {
    name = "Les Carmines",
    level = "15-25",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Duskwood
  Duskwood = {
    name = "Bois de la Pénombre",
    level = "18-30",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Wetlands
  Wetlands = {
    name = "Les Paluns",
    level = "20-30",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- Hillsbrad Foothills
  Hillsbrad = {
    name = "Contreforts de Hautebrande",
    level = "20-30",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Alterac Mountains
  Alterac = {
    name = "Montagnes d'Alterac",
    level = "30-40",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Arathi Highlands
  Arathi = {
    name = "Hautes-terres d'Arathi",
    level = "30-40",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Stranglethorn Vale
  STV = {
    name = "Vallée de Strangleronce",
    level = "30-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Stranglethorn = {
    name = "Vallée de Strangleronce",
    level = "30-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Badlands
  Badlands = {
    name = "Terres ingrates",
    level = "35-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Swamp of Sorrows
  Swamp = {
    name = "Marais des Chagrins",
    level = "35-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  SoS = {
    name = "Marais des Chagrins",
    level = "35-45",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- The Hinterlands
  Hinterlands = {
    name = "Les Hinterlands",
    level = "40-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Hinter = {
    name = "Les Hinterlands",
    level = "40-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },

  -- Searing Gorge
  Searing = {
    name = "Gorge des Vents brûlants",
    level = "43-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Gorge = {
    name = "Gorge des Vents brûlants",
    level = "43-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  SearingGorge = {
    name = "Gorge des Vents brûlants",
    level = "43-50",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Blasted Lands
  Blasted = {
    name = "Terres foudroyées",
    level = "45-55",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  BlastedLands = {
    name = "Terres foudroyées",
    level = "45-55",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Burning Steppes
  Burning = {
    name = "Steppes ardentes",
    level = "50-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Steppes = {
    name = "Steppes ardentes",
    level = "50-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  BurningSteppes = {
    name = "Steppes ardentes",
    level = "50-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Western Plaguelands
  WPL = {
    name = "Maleterres de l'ouest",
    level = "51-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  WestPlague = {
    name = "Maleterres de l'ouest",
    level = "51-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Plague = {
    name = "Maleterres de l'ouest",
    level = "51-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  Plaguelands = {
    name = "Maleterres de l'ouest",
    level = "51-58",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Eastern Plaguelands
  EPL = {
    name = "Maleterres de l'est",
    level = "53-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  EastPlague = {
    name = "Maleterres de l'est",
    level = "53-60",
    zone = "Royaumes de l'Est",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Deadwind Pass
  Deadwind = {
    name = "Défilé de Deuillevent",
    level = "55-60",
    zone = "Royaumes de l'Est",
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
    name = "Sombrivage",
    level = "10-20",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },

  -- The Barrens
  Barrens = {
    name = "Les Tarides",
    level = "10-33",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },

  -- Ashenvale
  Ashenvale = {
    name = "Orneval",
    level = "18-30",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Stonetalon Mountains
  Stonetalon = {
    name = "Les Serres-Rocheuses",
    level = "15-27",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Desolace
  Desolace = {
    name = "Désolace",
    level = "30-40",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Thousand Needles
  Needles = {
    name = "Mille pointes",
    level = "25-35",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },
  ThousandNeedles = {
    name = "Mille pointes",
    level = "25-35",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Dustwallow Marsh
  Dustwallow = {
    name = "Marécage d'Âprefange",
    level = "35-45",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Marsh = {
    name = "Marécage d'Âprefange",
    level = "35-45",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },

  -- Feralas
  Feralas = {
    name = "Féralas",
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
    name = "Cratère d'Un'Goro",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Ungoro = {
    name = "Cratère d'Un'Goro",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Crater = {
    name = "Cratère d'Un'Goro",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
    strict = true,
  },

  -- Felwood
  Felwood = {
    name = "Gangrebois",
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
    name = "Berceau-de-l'Hiver",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Moonglade
  Moonglade = {
    name = "Reflet-de-Lune",
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
    name = "Rives Claires",
    level = "35-45",
    zone = "Royaumes de l'Est",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },

  -- Mount Hyjal
  MountHyjal = {
    name = "Mont Hyjal",
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
    name = "Île de Zéphras",
    level = "1-12",
    zone = "Mur-Céleste",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },
  ZephrasIsle = {
    name = "Île de Zéphras",
    level = "1-12",
    zone = "Mur-Céleste",
    extension = "Forever",
    zoneType = "ZONE",
    faction = "Both",
  },

}
