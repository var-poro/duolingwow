local ADDON_NAME, DL = ...

local L = nil

local function GetDefaultEnabledLanguages()
  local locale = GetLocale()
  if locale == "frFR" then
    return { EN = false, FR = true }
  end
  return { EN = true, FR = false }
end

local function GetDefaultEnabledExtensions()
  local enabled = {}
  for _, ext in ipairs(DL:GetAvailableExtensions()) do
    enabled[ext.code] = true
  end
  return enabled
end

local function GetDefaultEnabledZoneTypes()
  local enabled = {}
  for _, zoneType in ipairs(DL:GetAvailableZoneTypes()) do
    enabled[zoneType.code] = true
  end
  return enabled
end

local function GetDefaultDB()
  return {
    enabledLanguages = GetDefaultEnabledLanguages(),
    enabledExtensions = GetDefaultEnabledExtensions(),
    enabledZoneTypes = GetDefaultEnabledZoneTypes(),
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

local function GetEnabledExtensions()
  local enabled = {}
  for _, ext in ipairs(DL:GetAvailableExtensions()) do
    if DuolingwowDB.enabledExtensions[ext.code] then
      table.insert(enabled, ext.code)
    end
  end
  return enabled
end

local function GetEnabledZoneTypes()
  local enabled = {}
  for _, zoneType in ipairs(DL:GetAvailableZoneTypes()) do
    if DuolingwowDB.enabledZoneTypes[zoneType.code] then
      table.insert(enabled, zoneType.code)
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
    return string.format("%s%s", alliance, horde)
  end
  return ""
end

local function GetExtensionName(code)
  for _, ext in ipairs(DL:GetAvailableExtensions()) do
    if ext.code == code then
      return ext.name
    end
  end
  return code or ""
end

local function GetZoneTypeName(code)
  for _, zoneType in ipairs(DL:GetAvailableZoneTypes()) do
    if zoneType.code == code then
      return zoneType.name
    end
  end
  return code or ""
end

local function AddTooltipEntry(tooltip, entry, abbr)
  local factionIcons = GetFactionIcons(entry.faction)
  if tooltip.SetPadding then
    tooltip:SetPadding(20, 00)
  end
  tooltip:SetMinimumWidth(160)
  tooltip:AddDoubleLine(
    string.format("|cffffff00%s|r", entry.name),
    string.format("|cffffffff(%s)|r", abbr),
    1, 1, 0,
    1, 1, 1
  )
  SetLastTooltipLineFonts(tooltip, GameFontNormalLarge, GameFontHighlight)
  local titleIndex = tooltip:NumLines()
  local abbrText = _G[tooltip:GetName() .. "TextRight" .. titleIndex]
  if abbrText then
    abbrText:ClearAllPoints()
    abbrText:SetJustifyH("RIGHT")
  end
  if entry.extension then
    tooltip:AddLine(string.format("|cffffffff%s %s|r", L.TOOLTIP_EXTENSION, GetExtensionName(entry.extension)), 1, 1, 1, true)
  end
  if entry.zoneType then
    tooltip:AddLine(string.format("|cffffffff%s %s|r", L.TOOLTIP_TYPE, GetZoneTypeName(entry.zoneType)), 1, 1, 1, true)
  end
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
      local data = langDict[normalized]
      if data.extension and DuolingwowDB.enabledExtensions[data.extension]
        and data.zoneType and DuolingwowDB.enabledZoneTypes[data.zoneType] then
        table.insert(entries, { lang = langCode, data = data })
      end
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
  for linkStart, linkText, linkEnd in message:gmatch("()(|H.-|h.-|h)()") do
    if linkStart > lastIndex then
      local before = message:sub(lastIndex, linkStart - 1)
      local replaced = ReplaceAbbreviations(before)
      table.insert(rebuilt, replaced)
    end
    table.insert(rebuilt, linkText)
    lastIndex = linkEnd
  end
  if lastIndex <= #message then
    local tail = ReplaceAbbreviations(message:sub(lastIndex))
    table.insert(rebuilt, tail)
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

local function GetEnabledExtensionList()
  local enabled = {}
  for _, ext in ipairs(DL:GetAvailableExtensions()) do
    if DuolingwowDB.enabledExtensions[ext.code] then
      table.insert(enabled, ext.name)
    end
  end
  return enabled
end

local function GetEnabledZoneTypeList()
  local enabled = {}
  for _, zoneType in ipairs(DL:GetAvailableZoneTypes()) do
    if DuolingwowDB.enabledZoneTypes[zoneType.code] then
      table.insert(enabled, zoneType.name)
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
  Print(L.COMMAND_EXTENSION_ENABLE)
  Print(L.COMMAND_EXTENSION_DISABLE)
  Print(L.COMMAND_TYPE_ENABLE)
  Print(L.COMMAND_TYPE_DISABLE)
  Print(L.COMMAND_STATUS)
end

local function NormalizeOption(option)
  if not option or option == "" then
    return nil
  end
  return option:upper()
end

local function UpdateOptionSetting(options, code, value)
  for _, info in ipairs(options) do
    local normalizedName = info.name and info.name:upper()
    if info.code == code or normalizedName == code then
      value(info.code)
      return info.name
    end
  end
  return nil
end

local function HandleSlashCommand(input)
  if not L then
    L = DL:GetStrings()
  end
  DuolingwowDB = DeepCopyDefaults(GetDefaultDB(), DuolingwowDB or {})
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

  if command == "extension" or command == "type" then
    local action = (args[2] or ""):lower()
    local rawValue = args[3] or ""
    if action ~= "enable" and action ~= "disable" then
      Print(L.COMMAND_UNKNOWN)
      return
    end
    local normalized = NormalizeOption(rawValue)
    local isEnabled = (action == "enable")
    if command == "extension" then
      local matched = UpdateOptionSetting(DL:GetAvailableExtensions(), normalized, function(code)
        DuolingwowDB.enabledExtensions[code] = isEnabled
      end)
      if matched then
        local status = isEnabled and "enabled" or "disabled"
        Print(string.format(L.COMMAND_EXTENSION_UPDATED, matched, status))
      else
        Print(string.format(L.COMMAND_EXTENSION_UNKNOWN, rawValue))
      end
      return
    end
    local matched = UpdateOptionSetting(DL:GetAvailableZoneTypes(), normalized, function(code)
      DuolingwowDB.enabledZoneTypes[code] = isEnabled
    end)
    if matched then
      local status = isEnabled and "enabled" or "disabled"
      Print(string.format(L.COMMAND_TYPE_UPDATED, matched, status))
    else
      Print(string.format(L.COMMAND_TYPE_UNKNOWN, rawValue))
    end
    return
  end

  if command == "status" then
    local enabled = table.concat(GetEnabledLanguageList(), ", ")
    Print(string.format(L.COMMAND_STATUS_LINE, enabled ~= "" and enabled or "-"))
    local extensions = table.concat(GetEnabledExtensionList(), ", ")
    Print(string.format(L.COMMAND_STATUS_EXTENSIONS_LINE, extensions ~= "" and extensions or "-"))
    local zoneTypes = table.concat(GetEnabledZoneTypeList(), ", ")
    Print(string.format(L.COMMAND_STATUS_TYPES_LINE, zoneTypes ~= "" and zoneTypes or "-"))
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
