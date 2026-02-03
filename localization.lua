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
    COMMAND_PREFIX = "Duolingwow commands:",
    COMMAND_HELP = "/dl help - show this help",
    COMMAND_ENABLE = "/dl enable <lang> - enable a language (EN/FR)",
    COMMAND_DISABLE = "/dl disable <lang> - disable a language (EN/FR)",
    COMMAND_COLOR = "/dl color <hex> - set link color (e.g. FFD100)",
    COMMAND_STATUS = "/dl status - show enabled languages and color",
    COMMAND_UNKNOWN = "Unknown command. Use /dl help.",
    COMMAND_LANG_UNKNOWN = "Unknown language: %s",
    COMMAND_LANG_UPDATED = "%s language is now %s.",
    COMMAND_COLOR_UPDATED = "Link color updated to #%s.",
    COMMAND_STATUS_LINE = "Enabled languages: %s. Link color: #%s.",
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
    COMMAND_PREFIX = "Commandes Duolingwow :",
    COMMAND_HELP = "/dl help - afficher cette aide",
    COMMAND_ENABLE = "/dl enable <lang> - activer une langue (EN/FR)",
    COMMAND_DISABLE = "/dl disable <lang> - désactiver une langue (EN/FR)",
    COMMAND_COLOR = "/dl color <hex> - définir la couleur (ex : FFD100)",
    COMMAND_STATUS = "/dl status - afficher langues et couleur",
    COMMAND_UNKNOWN = "Commande inconnue. Utilisez /dl help.",
    COMMAND_LANG_UNKNOWN = "Langue inconnue : %s",
    COMMAND_LANG_UPDATED = "Langue %s %s.",
    COMMAND_COLOR_UPDATED = "Couleur du lien mise à jour en #%s.",
    COMMAND_STATUS_LINE = "Langues activées : %s. Couleur du lien : #%s.",
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
