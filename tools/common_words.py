# Dictionary keys that are also everyday words in English, French or German chat.
# They are flagged `strict = true`: they only become links when typed with the exact
# same case as the key (e.g. "Live" -> Stratholme: Live, but "live" stays plain text).
# Real abbreviations (SFK, BRD, Strat...) stay case-insensitive.
COMMON_WORDS = {
    # acronyms that are English words
    "IF", "SET",
    # Scarlet Monastery / Stratholme / Maraudon / BRD / Dire Maul wings
    "Lib", "Library", "Arm", "Armory", "Cathedral", "Live", "Scarlet", "Undead", "Baron",
    "Purple", "Orange", "Princess", "Arena", "Lower", "Upper", "East", "West", "North",
    "Stock", "Stocks", "Gnome",
    # TBC instances
    "Ramp", "Ramps", "Furnace", "Pens", "Tombs", "Crypts", "Escape", "Shadow", "Labs",
    "Shattered", "Bot", "Arc", "Terrace", "Mount", "Temple", "Mag", "Eye", "Storm",
    # battlegrounds, cities
    "Basin", "Valley", "Gulch", "Under", "Unter", "Thunder", "Silver", "Darn",
    # zones
    "Swamp", "Hinter", "Searing", "Gorge", "Blasted", "Burning", "Steppes", "Plague",
    "Needles", "Marsh", "Crater", "Blade", "Blades", "Nether",
    # Forever ambiguous acronyms / words
    "HoT", "DC", "KS", "AP", "Drowned", "Excavation", "Shaper", "Barrow",
}
