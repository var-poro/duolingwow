local ADDON_NAME, DL = ...

DL.Locale = {
  EN = {
    ADDON_NAME = "Duolingwow",
    OPTIONS_TITLE = "Duolingwow Options",
    OPTIONS_DESC = "Select languages to show in abbreviation tooltips.",
    OPTIONS_LANG_HEADER = "Languages",
    OPTIONS_CREDITS_HEADER = "Credits",
    OPTIONS_CREDITS = "Author: Poro",
    OPTIONS_GITHUB = "GitHub: https://github.com/poro/duolingwow",
    OPTIONS_COLOR_HEADER = "Chat Link Color",
    OPTIONS_COLOR_PICKER = "Choose link color",
    TOOLTIP_TITLE = "Duolingwow",
    TOOLTIP_EMPTY = "No entry for enabled languages.",
  },
  FR = {
    ADDON_NAME = "Duolingwow",
    OPTIONS_TITLE = "Options Duolingwow",
    OPTIONS_DESC = "Sélectionnez les langues à afficher dans les tooltips.",
    OPTIONS_LANG_HEADER = "Langues",
    OPTIONS_CREDITS_HEADER = "Crédits",
    OPTIONS_CREDITS = "Auteur : Poro",
    OPTIONS_GITHUB = "GitHub : https://github.com/poro/duolingwow",
    OPTIONS_COLOR_HEADER = "Couleur du lien de chat",
    OPTIONS_COLOR_PICKER = "Choisir la couleur",
    TOOLTIP_TITLE = "Duolingwow",
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
