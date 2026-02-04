local ADDON_NAME, DL = ...

DL.Dictionary = DL.Dictionary or {}
DL.Dictionary.DE = {
  -- ============================================================================
  -- DUNGEONS - VANILLA
  -- ============================================================================
  
  -- Ragefire Chasm
  RFC = {
    name = "Flammenschlund",
    level = "13-18",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Horde",
  },
  
  -- Wailing Caverns
  WC = {
    name = "Höhlen des Wehklagens",
    level = "17-24",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Deadmines
  DM = {
    name = "Die Todesminen",
    level = "17-26",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  VC = {
    name = "Die Todesminen",
    level = "17-26",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  Deadmines = {
    name = "Die Todesminen",
    level = "17-26",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  
  -- Shadowfang Keep
  SFK = {
    name = "Burg Schattenfang",
    level = "22-30",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Blackfathom Deeps
  BFD = {
    name = "Tiefschwarze Grotte",
    level = "24-32",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Stockade
  Stocks = {
    name = "Das Verlies",
    level = "24-32",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  Stock = {
    name = "Das Verlies",
    level = "24-32",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  Stockade = {
    name = "Das Verlies",
    level = "24-32",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Alliance",
  },
  
  -- Gnomeregan
  Gnomer = {
    name = "Gnomeregan",
    level = "29-38",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Gnome = {
    name = "Gnomeregan",
    level = "29-38",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Gnomeregan = {
    name = "Gnomeregan",
    level = "29-38",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Razorfen Kraul
  RFK = {
    name = "Kral der Klingenhauer",
    level = "29-38",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Scarlet Monastery
  SM = {
    name = "Scharlachrotes Kloster",
    level = "26-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  GY = {
    name = "Scharlachrotes Kloster: Friedhof",
    level = "26-32",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMGY = {
    name = "Scharlachrotes Kloster: Friedhof",
    level = "26-32",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Lib = {
    name = "Scharlachrotes Kloster: Bibliothek",
    level = "29-39",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMLib = {
    name = "Scharlachrotes Kloster: Bibliothek",
    level = "29-39",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Library = {
    name = "Scharlachrotes Kloster: Bibliothek",
    level = "29-39",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Arm = {
    name = "Scharlachrotes Kloster: Waffenkammer",
    level = "32-42",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMArm = {
    name = "Scharlachrotes Kloster: Waffenkammer",
    level = "32-42",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Armory = {
    name = "Scharlachrotes Kloster: Waffenkammer",
    level = "32-42",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Cath = {
    name = "Scharlachrotes Kloster: Kathedrale",
    level = "35-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SMCath = {
    name = "Scharlachrotes Kloster: Kathedrale",
    level = "35-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Cathedral = {
    name = "Scharlachrotes Kloster: Kathedrale",
    level = "35-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Razorfen Downs
  RFD = {
    name = "Hügel der Klingenhauer",
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
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Uldaman = {
    name = "Uldaman",
    level = "41-51",
    zone = "Östliche Königreiche",
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
    name = "Maraudon: Lila",
    level = "46-52",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Orange = {
    name = "Maraudon: Orange",
    level = "46-52",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Princess = {
    name = "Maraudon: Prinzessin",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Temple of Atal'Hakkar (Sunken Temple)
  ST = {
    name = "Tempel von Atal'Hakkar",
    level = "50-56",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Sunken = {
    name = "Tempel von Atal'Hakkar",
    level = "50-56",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Blackrock Depths
  BRD = {
    name = "Schwarzfelstiefen",
    level = "52-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Arena = {
    name = "Schwarzfelstiefen: Arena",
    level = "52-55",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Angerforge = {
    name = "Schwarzfelstiefen: Zorneshitze",
    level = "54-57",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Emperor = {
    name = "Schwarzfelstiefen: Kaiser",
    level = "56-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Emp = {
    name = "Schwarzfelstiefen: Kaiser",
    level = "56-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Lower Blackrock Spire
  LBRS = {
    name = "Untere Schwarzfelsspitze",
    level = "55-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Lower = {
    name = "Untere Schwarzfelsspitze",
    level = "55-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Upper Blackrock Spire
  UBRS = {
    name = "Obere Schwarzfelsspitze",
    level = "55-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Upper = {
    name = "Obere Schwarzfelsspitze",
    level = "55-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Blackrock Spire (generic)
  BRS = {
    name = "Schwarzfelsspitze",
    level = "55-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Dire Maul
  DireMaul = {
    name = "Düsterbruch",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  DME = {
    name = "Düsterbruch Ost",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  East = {
    name = "Düsterbruch Ost",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  DMW = {
    name = "Düsterbruch West",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  West = {
    name = "Düsterbruch West",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  DMN = {
    name = "Düsterbruch Nord",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  North = {
    name = "Düsterbruch Nord",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Tribute = {
    name = "Düsterbruch Nord: Tribut",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Trib = {
    name = "Düsterbruch Nord: Tribut",
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
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Strath = {
    name = "Stratholme",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Stratholme = {
    name = "Stratholme",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  StratLive = {
    name = "Stratholme: Lebendig",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Live = {
    name = "Stratholme: Lebendig",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Scarlet = {
    name = "Stratholme: Lebendig",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  StratUD = {
    name = "Stratholme: Untote",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  UD = {
    name = "Stratholme: Untote",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Undead = {
    name = "Stratholme: Untote",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Baron = {
    name = "Stratholme: Untote",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Scholomance
  Scholo = {
    name = "Scholomance",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Schol = {
    name = "Scholomance",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Scholomance = {
    name = "Scholomance",
    level = "58-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- ============================================================================
  -- DUNGEONS - THE BURNING CRUSADE
  -- ============================================================================
  
  -- Hellfire Ramparts
  Ramps = {
    name = "Höllenfeuerbollwerk",
    level = "58-62",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Ramp = {
    name = "Höllenfeuerbollwerk",
    level = "58-62",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  HFR = {
    name = "Höllenfeuerbollwerk",
    level = "58-62",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Ramparts = {
    name = "Höllenfeuerbollwerk",
    level = "58-62",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Blood Furnace
  BF = {
    name = "Der Blutkessel",
    level = "59-63",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Furnace = {
    name = "Der Blutkessel",
    level = "59-63",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Slave Pens
  SP = {
    name = "Die Sklavenunterkünfte",
    level = "60-64",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Pens = {
    name = "Die Sklavenunterkünfte",
    level = "60-64",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Underbog
  UB = {
    name = "Der Untere Sumpf",
    level = "61-65",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Underbog = {
    name = "Der Untere Sumpf",
    level = "61-65",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Mana-Tombs
  MT = {
    name = "Managruft",
    level = "62-66",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Tombs = {
    name = "Managruft",
    level = "62-66",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  ManaTombs = {
    name = "Managruft",
    level = "62-66",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Auchenai Crypts
  AC = {
    name = "Auchenaikrypten",
    level = "63-67",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Crypts = {
    name = "Auchenaikrypten",
    level = "63-67",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Old Hillsbrad Foothills
  OHB = {
    name = "Vorgebirge des Hügellands",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  OHF = {
    name = "Vorgebirge des Hügellands",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Escape = {
    name = "Vorgebirge des Hügellands",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Durnholde = {
    name = "Vorgebirge des Hügellands",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  OldHillsbrad = {
    name = "Vorgebirge des Hügellands",
    level = "64-68",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Sethekk Halls
  Seth = {
    name = "Sethekkhallen",
    level = "65-69",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SET = {
    name = "Sethekkhallen",
    level = "65-69",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Sethekk = {
    name = "Sethekkhallen",
    level = "65-69",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Steamvault
  SV = {
    name = "Die Dampfkammer",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Steamvault = {
    name = "Die Dampfkammer",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Shadow Labyrinth
  SL = {
    name = "Schattenlabyrinth",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Slabs = {
    name = "Schattenlabyrinth",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  SLabs = {
    name = "Schattenlabyrinth",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Labs = {
    name = "Schattenlabyrinth",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Shadow = {
    name = "Schattenlabyrinth",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Shattered Halls
  SH = {
    name = "Die zerschmetterten Hallen",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Shattered = {
    name = "Die zerschmetterten Hallen",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Mechanar
  Mech = {
    name = "Die Mechanar",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  MECH = {
    name = "Die Mechanar",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Mechanar = {
    name = "Die Mechanar",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Botanica
  Bot = {
    name = "Die Botanika",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  BOT = {
    name = "Die Botanika",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Botanica = {
    name = "Die Botanika",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- The Arcatraz
  Arc = {
    name = "Die Arkatraz",
    level = "68-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  ARC = {
    name = "Die Arkatraz",
    level = "68-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Arcatraz = {
    name = "Die Arkatraz",
    level = "68-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Black Morass
  BM = {
    name = "Der Schwarze Morast",
    level = "68-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Morass = {
    name = "Der Schwarze Morast",
    level = "68-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- Magisters' Terrace
  MgT = {
    name = "Terrasse der Magister",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  MrT = {
    name = "Terrasse der Magister",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Magisters = {
    name = "Terrasse der Magister",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  Terrace = {
    name = "Terrasse der Magister",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "DUNGEON",
    faction = "Both",
  },
  
  -- ============================================================================
  -- RAIDS - VANILLA
  -- ============================================================================
  
  -- Molten Core
  MC = {
    name = "Geschmolzener Kern",
    level = "60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Onyxia's Lair
  Ony = {
    name = "Onyxias Hort",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Oni = {
    name = "Onyxias Hort",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  ONY = {
    name = "Onyxias Hort",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Onyxia = {
    name = "Onyxias Hort",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Blackwing Lair
  BWL = {
    name = "Pechschwingenhort",
    level = "60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Zul'Gurub
  ZG = {
    name = "Zul'Gurub",
    level = "60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Ruins of Ahn'Qiraj
  AQ20 = {
    name = "Ruinen von Ahn'Qiraj",
    level = "60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Temple of Ahn'Qiraj
  AQ40 = {
    name = "Tempel von Ahn'Qiraj",
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
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "RAID",
    faction = "Both",
  },
  Naxxramas = {
    name = "Naxxramas",
    level = "60",
    zone = "Östliche Königreiche",
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
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  KZ = {
    name = "Karazhan",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Karazhan = {
    name = "Karazhan",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Gruul's Lair
  Gruul = {
    name = "Gruuls Unterschlupf",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  GL = {
    name = "Gruuls Unterschlupf",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Gruuls = {
    name = "Gruuls Unterschlupf",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Magtheridon's Lair
  Mag = {
    name = "Magtheridons Kammer",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Mags = {
    name = "Magtheridons Kammer",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  ML = {
    name = "Magtheridons Kammer",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Magtheridon = {
    name = "Magtheridons Kammer",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Serpentshrine Cavern
  SSC = {
    name = "Schlangenschrein",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Serpentshrine = {
    name = "Schlangenschrein",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Tempest Keep: The Eye
  TK = {
    name = "Festung der Stürme: Das Auge",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Eye = {
    name = "Festung der Stürme: Das Auge",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Hyjal Summit
  Hyjal = {
    name = "Hyjalgipfel",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  MH = {
    name = "Hyjalgipfel",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Mount = {
    name = "Hyjalgipfel",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  MountHyjal = {
    name = "Hyjalgipfel",
    level = "70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Black Temple
  BT = {
    name = "Schwarzer Tempel",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Temple = {
    name = "Schwarzer Tempel",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  BlackTemple = {
    name = "Schwarzer Tempel",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Zul'Aman
  ZA = {
    name = "Zul'Aman",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- Sunwell Plateau
  SWP = {
    name = "Sonnenbrunnenplateau",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  Sunwell = {
    name = "Sonnenbrunnenplateau",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "RAID",
    faction = "Both",
  },
  
  -- ============================================================================
  -- BATTLEGROUNDS
  -- ============================================================================
  
  -- Warsong Gulch
  WSG = {
    name = "Schlucht der Kriegshymnen",
    level = "10-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Warsong = {
    name = "Schlucht der Kriegshymnen",
    level = "10-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Gulch = {
    name = "Schlucht der Kriegshymnen",
    level = "10-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  
  -- Arathi Basin
  AB = {
    name = "Arathibecken",
    level = "20-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Basin = {
    name = "Arathibecken",
    level = "20-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  
  -- Alterac Valley
  AV = {
    name = "Alteractal",
    level = "51-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Valley = {
    name = "Alteractal",
    level = "51-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  
  -- Eye of the Storm
  EOTS = {
    name = "Auge des Sturms",
    level = "61-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  EotS = {
    name = "Auge des Sturms",
    level = "61-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Eye = {
    name = "Auge des Sturms",
    level = "61-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  Storm = {
    name = "Auge des Sturms",
    level = "61-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "BATTLEGROUND",
    faction = "Both",
  },
  
  -- ============================================================================
  -- ARENAS
  -- ============================================================================
  
  -- Nagrand Arena
  NagrandArena = {
    name = "Nagrandarena",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ARENA",
    faction = "Both",
  },
  
  -- Blade's Edge Arena
  BEA = {
    name = "Arena des Schergrats",
    level = "70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ARENA",
    faction = "Both",
  },
  
  -- Ruins of Lordaeron
  RoL = {
    name = "Ruinen von Lordaeron",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "ARENA",
    faction = "Both",
  },
  
  -- ============================================================================
  -- CITIES - ALLIANCE
  -- ============================================================================
  
  -- Stormwind
  SW = {
    name = "Sturmwind",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Stormwind = {
    name = "Sturmwind",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  
  -- Ironforge
  IF = {
    name = "Eisenschmiede",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
  },
  
  -- Darnassus
  Darn = {
    name = "Darnassus",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Alliance",
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
    name = "Die Exodar",
    level = "1-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Alliance",
  },
  Exodar = {
    name = "Die Exodar",
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
    name = "Unterstadt",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Under = {
    name = "Unterstadt",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Unter = {
    name = "Unterstadt",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Undercity = {
    name = "Unterstadt",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Stonard
  Stonard = {
    name = "Steinard",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Thunder Bluff
  TB = {
    name = "Donnerfels",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  Thunder = {
    name = "Donnerfels",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  ThunderBluff = {
    name = "Donnerfels",
    level = "1-70",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- Silvermoon City
  SMC = {
    name = "Silbermond",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Horde",
  },
  Silver = {
    name = "Silbermond",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Horde",
  },
  Silvermoon = {
    name = "Silbermond",
    level = "1-70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Horde",
  },
  
  -- ============================================================================
  -- CITIES - NEUTRAL
  -- ============================================================================
  
  -- Shattrath City
  Shatt = {
    name = "Shattrath",
    level = "1-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  Shat = {
    name = "Shattrath",
    level = "1-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  Shattrath = {
    name = "Shattrath",
    level = "1-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- Booty Bay
  BB = {
    name = "Beutebucht",
    level = "1-70",
    zone = "Östliche Königreiche",
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
    name = "Burg Cenarius",
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
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "CITY",
    faction = "Both",
  },
  
  -- ============================================================================
  -- DUNGEON/RAID HUBS
  -- ============================================================================
  
  -- Blackrock Mountain
  BRM = {
    name = "Der Schwarzfels",
    level = "52-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Caverns of Time
  COT = {
    name = "Höhlen der Zeit",
    level = "64-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  CoT = {
    name = "Höhlen der Zeit",
    level = "64-70",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Coilfang Reservoir
  CR = {
    name = "Reservoir der Skitterflosse",
    level = "60-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Coilfang = {
    name = "Reservoir der Skitterflosse",
    level = "60-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Auchindoun
  AUCH = {
    name = "Auchindoun",
    level = "62-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Auch = {
    name = "Auchindoun",
    level = "62-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Auchindoun = {
    name = "Auchindoun",
    level = "62-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Hellfire Citadel
  HC = {
    name = "Höllenfeuerzitadelle",
    level = "58-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Tempest Keep (complex)
  TempestKeep = {
    name = "Festung der Stürme",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- ============================================================================
  -- ZONES - EASTERN KINGDOMS (VANILLA)
  -- ============================================================================
  
  -- Elwynn Forest
  Elwynn = {
    name = "Wald von Elwynn",
    level = "1-10",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Dun Morogh
  DunMorogh = {
    name = "Dun Morogh",
    level = "1-10",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Tirisfal Glades
  Tirisfal = {
    name = "Tirisfal",
    level = "1-10",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Westfall
  Westfall = {
    name = "Westfall",
    level = "10-20",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Loch Modan
  Loch = {
    name = "Loch Modan",
    level = "10-20",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  LochModan = {
    name = "Loch Modan",
    level = "10-20",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Silverpine Forest
  Silverpine = {
    name = "Silberwald",
    level = "10-20",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Redridge Mountains
  Redridge = {
    name = "Rotkammgebirge",
    level = "15-25",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Duskwood
  Duskwood = {
    name = "Dämmerwald",
    level = "18-30",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Wetlands
  Wetlands = {
    name = "Sumpfland",
    level = "20-30",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Hillsbrad Foothills
  Hillsbrad = {
    name = "Vorgebirge des Hügellands",
    level = "20-30",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Alterac Mountains
  Alterac = {
    name = "Alteracgebirge",
    level = "30-40",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Arathi Highlands
  Arathi = {
    name = "Arathihochland",
    level = "30-40",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Stranglethorn Vale
  STV = {
    name = "Schlingendorntal",
    level = "30-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Stranglethorn = {
    name = "Schlingendorntal",
    level = "30-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Badlands
  Badlands = {
    name = "Ödland",
    level = "35-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Swamp of Sorrows
  Swamp = {
    name = "Sümpfe des Elends",
    level = "35-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  SoS = {
    name = "Sümpfe des Elends",
    level = "35-45",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- The Hinterlands
  Hinterlands = {
    name = "Hinterland",
    level = "40-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Hinter = {
    name = "Hinterland",
    level = "40-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Searing Gorge
  Searing = {
    name = "Sengende Schlucht",
    level = "43-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Gorge = {
    name = "Sengende Schlucht",
    level = "43-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  SearingGorge = {
    name = "Sengende Schlucht",
    level = "43-50",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Blasted Lands
  Blasted = {
    name = "Verwüstete Lande",
    level = "45-55",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  BlastedLands = {
    name = "Verwüstete Lande",
    level = "45-55",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Burning Steppes
  Burning = {
    name = "Brennende Steppe",
    level = "50-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Steppes = {
    name = "Brennende Steppe",
    level = "50-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  BurningSteppes = {
    name = "Brennende Steppe",
    level = "50-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Western Plaguelands
  WPL = {
    name = "Westliche Pestländer",
    level = "51-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  WestPlague = {
    name = "Westliche Pestländer",
    level = "51-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Plague = {
    name = "Westliche Pestländer",
    level = "51-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Plaguelands = {
    name = "Westliche Pestländer",
    level = "51-58",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Eastern Plaguelands
  EPL = {
    name = "Östliche Pestländer",
    level = "53-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  EastPlague = {
    name = "Östliche Pestländer",
    level = "53-60",
    zone = "Östliche Königreiche",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Deadwind Pass
  Deadwind = {
    name = "Gebirgspass der Totenwinde",
    level = "55-60",
    zone = "Östliche Königreiche",
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
    name = "Dunkelküste",
    level = "10-20",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- The Barrens
  Barrens = {
    name = "Brachland",
    level = "10-33",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Ashenvale
  Ashenvale = {
    name = "Eschental",
    level = "18-30",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Stonetalon Mountains
  Stonetalon = {
    name = "Steinkrallengebirge",
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
    name = "Tausend Nadeln",
    level = "25-35",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  ThousandNeedles = {
    name = "Tausend Nadeln",
    level = "25-35",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Dustwallow Marsh
  Dustwallow = {
    name = "Düstermarschen",
    level = "35-45",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Marsh = {
    name = "Düstermarschen",
    level = "35-45",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
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
    name = "Krater von Un'Goro",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Ungoro = {
    name = "Krater von Un'Goro",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  Crater = {
    name = "Krater von Un'Goro",
    level = "48-55",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Felwood
  Felwood = {
    name = "Teufelswald",
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
    name = "Winterquell",
    level = "55-60",
    zone = "Kalimdor",
    extension = "Vanilla",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Moonglade
  Moonglade = {
    name = "Mondlichtung",
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
    name = "Immersangwald",
    level = "1-10",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Ghostlands
  Ghostlands = {
    name = "Ghostlands",
    level = "10-20",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Horde",
  },
  
  -- Isle of Quel'Danas
  IoQD = {
    name = "Insel von Quel'Danas",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  QuelDanas = {
    name = "Insel von Quel'Danas",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Sunwell = {
    name = "Insel von Quel'Danas",
    level = "70",
    zone = "Östliche Königreiche",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- ============================================================================
  -- ZONES - KALIMDOR (THE BURNING CRUSADE)
  -- ============================================================================
  
  -- Azuremyst Isle
  Azuremyst = {
    name = "Azurmythosinsel",
    level = "1-10",
    zone = "Kalimdor",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Alliance",
  },
  
  -- Bloodmyst Isle
  Bloodmyst = {
    name = "Blutmythosinsel",
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
    name = "Höllenfeuerhalbinsel",
    level = "58-63",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Hellfire = {
    name = "Höllenfeuerhalbinsel",
    level = "58-63",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Zangarmarsh
  Zangar = {
    name = "Zangarmarschen",
    level = "60-64",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Zangarmarsh = {
    name = "Zangarmarschen",
    level = "60-64",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Terokkar Forest
  Terokkar = {
    name = "Wälder von Terokkar",
    level = "62-65",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Nagrand
  Nagrand = {
    name = "Nagrand",
    level = "64-67",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Blade's Edge Mountains
  BEM = {
    name = "Schergrat",
    level = "65-68",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Blade = {
    name = "Schergrat",
    level = "65-68",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Blades = {
    name = "Schergrat",
    level = "65-68",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  BladesEdge = {
    name = "Schergrat",
    level = "65-68",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Netherstorm
  Netherstorm = {
    name = "Nethersturm",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  NS = {
    name = "Nethersturm",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Nether = {
    name = "Nethersturm",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  
  -- Shadowmoon Valley
  SMV = {
    name = "Schattenmondtal",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
  Shadowmoon = {
    name = "Schattenmondtal",
    level = "67-70",
    zone = "Scherbenwelt",
    extension = "The Burning Crusade",
    zoneType = "ZONE",
    faction = "Both",
  },
}
