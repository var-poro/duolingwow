local ADDON_NAME, DL = ...

local L = nil

local function GetDefaultEnabledLanguages()
  local locale = GetLocale()
  if locale == "frFR" then
    return { EN = false, FR = true }
  end
  return { EN = true, FR = false }
end

local function GetDefaultDB()
  return {
    enabledLanguages = GetDefaultEnabledLanguages(),
  }
end

local CHAT_EVENTS = {
  "CHAT_MSG_SAY",
  "CHAT_MSG_YELL",
  "CHAT_MSG_GUILD",
  "CHAT_MSG_OFFICER",
  "CHAT_MSG_PARTY",
  "CHAT_MSG_PARTY_LEADER",
  "CHAT_MSG_RAID",
  "CHAT_MSG_RAID_LEADER",
  "CHAT_MSG_RAID_WARNING",
  "CHAT_MSG_WHISPER",
  "CHAT_MSG_WHISPER_INFORM",
  "CHAT_MSG_CHANNEL",
  "CHAT_MSG_EMOTE",
  "CHAT_MSG_TEXT_EMOTE",
}

local function DeepCopyDefaults(src, dest)
  if type(dest) ~= "table" then
    dest = {}
  end
  for key, value in pairs(src) do
    if type(value) == "table" then
      dest[key] = DeepCopyDefaults(value, dest[key])
    elseif dest[key] == nil then
      dest[key] = value
    end
  end
  return dest
end

local function GetEnabledLanguages()
  local enabled = {}
  for _, lang in ipairs(DL:GetAvailableLanguages()) do
    if DuolingwowDB.enabledLanguages[lang.code] then
      table.insert(enabled, lang.code)
    end
  end
  return enabled
end

local function GetLinkColor()
  local color = DuolingwowDB.linkColor or { r = 1, g = 0.82, b = 0 }
  return color.r, color.g, color.b
end

local function ColorizeLinkText(text)
  local r, g, b = GetLinkColor()
  return string.format("|cff%02x%02x%02x%s|r", r * 255, g * 255, b * 255, text)
end

local function SetLastTooltipLineFonts(tooltip, leftFont, rightFont)
  local numLines = tooltip:NumLines()
  local left = _G[tooltip:GetName() .. "TextLeft" .. numLines]
  if left and leftFont then
    left:SetFontObject(leftFont)
  end
  local right = _G[tooltip:GetName() .. "TextRight" .. numLines]
  if right and rightFont then
    right:SetFontObject(rightFont)
  end
end

local function GetFactionIcons(faction)
  local alliance = "|TInterface\\PVPFrame\\PVP-Currency-Alliance:14:14:0:0|t"
  local horde = "|TInterface\\PVPFrame\\PVP-Currency-Horde:14:14:0:0|t"

  if faction == "Alliance" then
    return alliance
  end
  if faction == "Horde" then
    return horde
  end
  if faction == "Both" then
    return string.format("%s %s", alliance, horde)
  end
  return ""
end

local function AddTooltipEntry(tooltip, entry, abbr)
  local factionIcons = GetFactionIcons(entry.faction)
  if tooltip.SetPadding then
    tooltip:SetPadding(0, 0)
  end
  tooltip:AddDoubleLine(
    string.format("|cffffff00%s|r", entry.name),
    string.format("|cffffffff(%s)|r", abbr),
    1, 1, 0,
    1, 1, 1
  )
  SetLastTooltipLineFonts(tooltip, GameFontNormalLarge, GameFontHighlight)
  if entry.zone then
    local zone = entry.zone
    if factionIcons ~= "" then
      tooltip:AddLine(string.format("|cffffffff%s|r %s", zone, factionIcons), 1, 1, 1, true)
    else
      tooltip:AddLine(string.format("|cffffffff%s|r", zone), 1, 1, 1, true)
    end
  end
  if entry.level then
    tooltip:AddDoubleLine(string.format("|cffffff00lvl. %s|r", entry.level), "|cffffffffDuolingwow|r", 1, 1, 0, 1, 1, 1)
    SetLastTooltipLineFonts(tooltip, GameFontHighlight, GameFontDisableSmall)
  else
    tooltip:AddLine("|cffffffffDuolingwow|r", 1, 1, 1, true)
    SetLastTooltipLineFonts(tooltip, GameFontDisableSmall, GameFontDisableSmall)
  end
end

local function GetAbbreviationEntries(abbr)
  local normalized = abbr and abbr:upper() or abbr
  local entries = {}
  for _, langCode in ipairs(GetEnabledLanguages()) do
    local langDict = DL.Dictionary[langCode]
    if langDict and normalized and langDict[normalized] then
      table.insert(entries, { lang = langCode, data = langDict[normalized] })
    end
  end
  return entries
end

local function ReplaceAbbreviations(segment)
  return segment:gsub("%f[%w]([%w]+)%f[%W]", function(word)
    local key = word:upper()
    if DL.AbbrLookup and DL.AbbrLookup[key] then
      local abbr = DL.AbbrLookup[key]
      return string.format("|Hdlwow:%s|h%s|h", abbr, ColorizeLinkText(string.format("[%s]", word)))
    end
    return word
  end)
end

local function ProcessMessage(message)
  if not message or message == "" then
    return message
  end

  if not message:find("|H") then
    return ReplaceAbbreviations(message)
  end

  local rebuilt = {}
  local lastIndex = 1
  for linkStart, linkEnd in message:gmatch("()(|H.-|h.-|h)()") do
    if linkStart > lastIndex then
      local before = message:sub(lastIndex, linkStart - 1)
      table.insert(rebuilt, ReplaceAbbreviations(before))
    end
    table.insert(rebuilt, message:sub(linkStart, linkEnd - 1))
    lastIndex = linkEnd
  end
  if lastIndex <= #message then
    table.insert(rebuilt, ReplaceAbbreviations(message:sub(lastIndex)))
  end

  return table.concat(rebuilt)
end

local function ChatFilter(self, event, message, author, ...)
  local updated = ProcessMessage(message)
  if updated ~= message then
    return false, updated, author, ...
  end
  return false, message, author, ...
end

local function OnItemRef(linkData)
  local linkType, abbr = string.split(":", linkData)
  if linkType ~= "dlwow" or not abbr then
    return false
  end

  local normalized = abbr:upper()
  local entries = GetAbbreviationEntries(normalized)
  ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE")
  ItemRefTooltip:ClearLines()

  if #entries == 0 then
    ItemRefTooltip:AddLine(L.TOOLTIP_EMPTY, 1, 0.5, 0.5)
  else
    for _, entry in ipairs(entries) do
      AddTooltipEntry(ItemRefTooltip, entry.data, normalized)
    end
  end

  ItemRefTooltip:Show()
  return true
end

local function RegisterItemRefHook()
  if type(SetItemRef) ~= "function" then
    return
  end

  if not DL.OriginalSetItemRef then
    DL.OriginalSetItemRef = SetItemRef
    SetItemRef = function(linkData, text, button, chatFrame)
      if OnItemRef(linkData) then
        return
      end
      return DL.OriginalSetItemRef(linkData, text, button, chatFrame)
    end
  end
end

local function Initialize()
  L = DL:GetStrings()
  if not DuolingwowDB and DuoLingWoWDB then
    DuolingwowDB = DuoLingWoWDB
    DuoLingWoWDB = nil
  end
  DuolingwowDB = DeepCopyDefaults(GetDefaultDB(), DuolingwowDB or {})
  DL.AbbrLookup = {}
  for _, lang in ipairs(DL:GetAvailableLanguages()) do
    local dict = DL.Dictionary[lang.code]
    if dict then
      for abbr in pairs(dict) do
        DL.AbbrLookup[abbr:upper()] = abbr
      end
    end
  end

  for _, event in ipairs(CHAT_EVENTS) do
    ChatFrame_AddMessageEventFilter(event, ChatFilter)
  end

  RegisterItemRefHook()
end

local function NormalizeLanguage(lang)
  if not lang or lang == "" then
    return nil
  end
  return lang:upper()
end

local function GetEnabledLanguageList()
  local enabled = {}
  for _, lang in ipairs(DL:GetAvailableLanguages()) do
    if DuolingwowDB.enabledLanguages[lang.code] then
      table.insert(enabled, lang.code)
    end
  end
  return enabled
end

local function Print(msg)
  DEFAULT_CHAT_FRAME:AddMessage(msg)
end

local function PrintHelp()
  Print(L.COMMAND_PREFIX)
  Print(L.COMMAND_HELP)
  Print(L.COMMAND_ENABLE)
  Print(L.COMMAND_DISABLE)
  Print(L.COMMAND_STATUS)
end

local function HandleSlashCommand(input)
  if not L then
    L = DL:GetStrings()
  end
  if not DuolingwowDB then
    DuolingwowDB = DeepCopyDefaults(GetDefaultDB(), DuolingwowDB or {})
  end
  local args = {}
  for token in string.gmatch(input or "", "%S+") do
    table.insert(args, token)
  end

  local command = (args[1] or "help"):lower()
  if command == "help" then
    PrintHelp()
    return
  end

  if command == "enable" or command == "disable" then
    local lang = NormalizeLanguage(args[2])
    local found = false
    for _, info in ipairs(DL:GetAvailableLanguages()) do
      if info.code == lang then
        found = true
        DuolingwowDB.enabledLanguages[lang] = (command == "enable")
        local status = (command == "enable") and "enabled" or "disabled"
        Print(string.format(L.COMMAND_LANG_UPDATED, lang, status))
        return
      end
    end
    if not found then
      Print(string.format(L.COMMAND_LANG_UNKNOWN, lang or ""))
    end
    return
  end

  if command == "status" then
    local enabled = table.concat(GetEnabledLanguageList(), ", ")
    Print(string.format(L.COMMAND_STATUS_LINE, enabled ~= "" and enabled or "-"))
    return
  end

  Print(L.COMMAND_UNKNOWN)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(_, event, addonName)
  if event == "ADDON_LOADED" and addonName == ADDON_NAME then
    Initialize()
  end
end)

DL.GetEnabledLanguages = GetEnabledLanguages

SLASH_DUOLINGWOW1 = "/dl"
SlashCmdList.DUOLINGWOW = HandleSlashCommand
