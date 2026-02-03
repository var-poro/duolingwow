local ADDON_NAME, DL = ...

DL.Locale = {
  EN = {
    ADDON_NAME = "DuoLingWoW",
    OPTIONS_TITLE = "DuoLingWoW Options",
    OPTIONS_DESC = "Select languages to show in abbreviation tooltips.",
    OPTIONS_LANG_HEADER = "Languages",
    OPTIONS_CREDITS_HEADER = "Credits",
    OPTIONS_CREDITS = "Author: Poro",
    OPTIONS_GITHUB = "GitHub: https://github.com/poro/duolingwow",
    TOOLTIP_TITLE = "WoW Abbreviation",
    TOOLTIP_EMPTY = "No entry for enabled languages.",
  },
  FR = {
    ADDON_NAME = "DuoLingWoW",
    OPTIONS_TITLE = "Options DuoLingWoW",
    OPTIONS_DESC = "Sélectionnez les langues à afficher dans les tooltips.",
    OPTIONS_LANG_HEADER = "Langues",
    OPTIONS_CREDITS_HEADER = "Crédits",
    OPTIONS_CREDITS = "Auteur : Poro",
    OPTIONS_GITHUB = "GitHub : https://github.com/poro/duolingwow",
    TOOLTIP_TITLE = "Abréviation WoW",
    TOOLTIP_EMPTY = "Aucune entrée pour les langues activées.",
  },
}

function DL:GetAvailableLanguages()
  return {
    { code = "EN", name = "English" },
    { code = "FR", name = "Français" },
  }
end

function DL:GetStrings()
  return self.Locale.EN
end
