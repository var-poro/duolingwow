local ADDON_NAME, DL = ...

local L = nil

local function GetDefaultEnabledLanguages()
  local locale = GetLocale()
  if locale == "frFR" then
    return { EN = false, FR = true, DE = false }
  end
  if locale == "deDE" then
    return { EN = false, FR = false, DE = true }
  end
  return { EN = true, FR = false, DE = false }
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
    blocklist = {},
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
  if not DuolingwowDB or not DuolingwowDB.enabledLanguages then
    return {}
  end
  local enabled = {}
  for _, lang in ipairs(DL:GetAvailableLanguages()) do
    local code = lang.code
    if DuolingwowDB.enabledLanguages[code] or DuolingwowDB.enabledLanguages[code:upper()] then
      table.insert(enabled, code)
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

local function GetBlocklist()
  return DuolingwowDB.blocklist or {}
end

local function NormalizeBlocklistKey(raw)
  if not raw or raw == "" then
    return nil
  end
  local trimmed = raw:match("^%s*(.-)%s*$")
  if trimmed == "" then
    return nil
  end
  return trimmed:upper()
end

local function IsBlocklistedKey(key)
  local normalized = NormalizeBlocklistKey(key)
  if not normalized then
    return false
  end
  return GetBlocklist()[normalized] == true
end

local function GetBlocklistList()
  local items = {}
  for key in pairs(GetBlocklist()) do
    table.insert(items, key)
  end
  table.sort(items)
  return items
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

local function GetExtensionName(code, locale)
  for _, ext in ipairs(DL:GetAvailableExtensions(locale)) do
    if ext.code == code then
      return ext.name
    end
  end
  return code or ""
end

local function GetZoneTypeName(code, locale)
  for _, zoneType in ipairs(DL:GetAvailableZoneTypes(locale)) do
    if zoneType.code == code then
      return zoneType.name
    end
  end
  return code or ""
end

local function NormalizeExtensionToCode(raw)
  if not raw or raw == "" then
    return nil
  end
  local u = (raw):upper()
  if u == "VANILLA" or u == "CLASSIC" then
    return "VANILLA"
  end
  if u == "TBC" or u:find("BURNING") or u:find("CRUSADE") then
    return "TBC"
  end
  return u
end

local function AddTooltipEntry(tooltip, entry, abbr, langCode)
  local locale = (langCode == "FR" and "FR") or (langCode == "DE" and "DE") or "EN"
  local factionIcons = GetFactionIcons(entry.faction)
  if tooltip.SetPadding then
    tooltip:SetPadding(20, 00)
  end
  tooltip:SetMinimumWidth(160)
  tooltip:AddDoubleLine(
    string.format("|cffffff00%s|r", entry.name or "?"),
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
  if entry.zoneType or entry.extension then
    local typeCode = entry.zoneType and (entry.zoneType):upper()
    local typeName = (typeCode and GetZoneTypeName(typeCode, locale)) or entry.zoneType or ""
    local extCode = NormalizeExtensionToCode(entry.extension)
    local extName = (extCode and GetExtensionName(extCode, locale)) or entry.extension or ""
    if typeName ~= "" or extName ~= "" then
      local extColor = (extCode == "TBC") and "|cff00cc00" or "|cffffffff"
      local line
      if typeName ~= "" and extName ~= "" then
        line = string.format("|cffffffff%s|r (%s%s|r|cffffffff)|r", typeName, extColor, extName)
      elseif typeName ~= "" then
        line = string.format("|cffffffff%s|r", typeName)
      else
        line = string.format("%s%s|r", extColor, extName)
      end
      tooltip:AddLine(line, 1, 1, 1, true)
    end
  end
  if entry.zone and entry.zone ~= "" then
    local zone = entry.zone
    if factionIcons ~= "" then
      tooltip:AddLine(string.format("|cffffffff%s|r %s", zone, factionIcons), 1, 1, 1, true)
    else
      tooltip:AddLine(string.format("|cffffffff%s|r", zone), 1, 1, 1, true)
    end
  end
  if entry.level and entry.level ~= "" then
    tooltip:AddDoubleLine(string.format("|cffffff00lvl. %s|r", entry.level), "|cffffffffDuolingwow|r", 1, 1, 0, 1, 1, 1)
    SetLastTooltipLineFonts(tooltip, GameFontHighlight, GameFontDisableSmall)
  else
    tooltip:AddLine("|cffffffffDuolingwow|r", 1, 1, 1, true)
    SetLastTooltipLineFonts(tooltip, GameFontDisableSmall, GameFontDisableSmall)
  end
end

local function IsEntryAllowedByFilters(data)
  if not DuolingwowDB or not data then
    return true
  end
  if data.extension then
    local extCode = NormalizeExtensionToCode(data.extension)
    if extCode and not DuolingwowDB.enabledExtensions[extCode] then
      return false
    end
  end
  if data.zoneType then
    local typeCode = (data.zoneType):upper()
    if not DuolingwowDB.enabledZoneTypes[typeCode] then
      return false
    end
  end
  return true
end

local function GetAbbreviationEntries(abbr)
  local normalized = abbr and abbr:upper() or abbr
  if not normalized or normalized == "" or not DuolingwowDB then
    return {}
  end
  if IsBlocklistedKey(normalized) then
    return {}
  end
  local dictKeys = DL.AbbrLookup and DL.AbbrLookup[normalized]
  if not dictKeys then
    dictKeys = { normalized }
  end
  local entries = {}
  local seen = {}
  for _, langCode in ipairs(GetEnabledLanguages()) do
    local langDict = DL.Dictionary[langCode]
    if langDict then
      for _, dictKey in ipairs(dictKeys) do
        local data = langDict[dictKey]
        local uid = langCode .. ":" .. (data and data.name or dictKey)
        if data and data.name and not seen[uid] and IsEntryAllowedByFilters(data) then
          seen[uid] = true
          table.insert(entries, { lang = langCode, data = data })
        end
      end
    end
  end
  return entries
end

local function ReplaceAbbreviations(segment)
  return segment:gsub("%f[%w]([%w]+)%f[%W]", function(word)
    local key = word:upper()
    if DL.AbbrLookup and DL.AbbrLookup[key] and #DL.AbbrLookup[key] > 0 then
      local entries = GetAbbreviationEntries(key)
      if #entries > 0 then
        return string.format("|Hdlwow:%s|h%s|h", key, ColorizeLinkText(string.format("[%s]", word)))
      end
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
  if IsBlocklistedKey(normalized) then
    return true
  end
  local entries = GetAbbreviationEntries(normalized)
  ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE")
  ItemRefTooltip:ClearLines()

  if #entries == 0 then
    ItemRefTooltip:AddLine(L.TOOLTIP_EMPTY, 1, 0.5, 0.5)
  else
    for _, entry in ipairs(entries) do
      AddTooltipEntry(ItemRefTooltip, entry.data, normalized, entry.lang)
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

-- Shared abbreviations: maps an uppercase abbreviation to additional dictionary keys.
-- This allows a single typed word (e.g. "Eye") to match multiple entries
-- (e.g. both the TK raid "EyeTK" and the battleground "Eye").
DL.SharedAbbreviations = {
  EYE = { "EyeTK" },
  SUNWELL = { "SunwellIsle" },
}

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
        local key = abbr:upper()
        if not DL.AbbrLookup[key] then
          DL.AbbrLookup[key] = {}
        end
        local found = false
        for _, existing in ipairs(DL.AbbrLookup[key]) do
          if existing == abbr then found = true; break end
        end
        if not found then
          table.insert(DL.AbbrLookup[key], abbr)
        end
      end
    end
  end

  if DL.SharedAbbreviations then
    for upperAbbr, extraKeys in pairs(DL.SharedAbbreviations) do
      if not DL.AbbrLookup[upperAbbr] then
        DL.AbbrLookup[upperAbbr] = {}
      end
      for _, key in ipairs(extraKeys) do
        table.insert(DL.AbbrLookup[upperAbbr], key)
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

local function GetBlocklistDisplay()
  local items = GetBlocklistList()
  if #items == 0 then
    return ""
  end
  return table.concat(items, ", ")
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
  Print(L.COMMAND_BLOCKLIST_HELP)
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

  if command == "lang" then
    local action = (args[2] or ""):lower()
    local rawLang = args[3] or ""
    if action ~= "enable" and action ~= "disable" then
      Print(L.COMMAND_UNKNOWN)
      return
    end
    local lang = NormalizeLanguage(rawLang)
    local found = false
    for _, info in ipairs(DL:GetAvailableLanguages()) do
      if info.code == lang then
        found = true
        DuolingwowDB.enabledLanguages[lang] = (action == "enable")
        local status = (action == "enable") and "enabled" or "disabled"
        Print(string.format(L.COMMAND_LANG_UPDATED, lang, status))
        return
      end
    end
    if not found then
      Print(string.format(L.COMMAND_LANG_UNKNOWN, rawLang or ""))
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
      local extensionCode = NormalizeExtensionToCode(rawValue)
      local matched = nil
      if extensionCode then
        for _, info in ipairs(DL:GetAvailableExtensions()) do
          if info.code == extensionCode then
            DuolingwowDB.enabledExtensions[extensionCode] = isEnabled
            matched = info.name
            break
          end
        end
      end
      if not matched then
        matched = UpdateOptionSetting(DL:GetAvailableExtensions(), normalized, function(code)
          DuolingwowDB.enabledExtensions[code] = isEnabled
        end)
      end
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

  if command == "blocklist" then
    local action = (args[2] or "list"):lower()
    if action == "add" or action == "remove" then
      local rawKey = args[3] or ""
      local normalized = NormalizeBlocklistKey(rawKey)
      if not normalized then
        Print(L.COMMAND_BLOCKLIST_MISSING)
        return
      end
      if action == "add" then
        DuolingwowDB.blocklist[normalized] = true
        Print(string.format(L.COMMAND_BLOCKLIST_ADDED, normalized))
      else
        DuolingwowDB.blocklist[normalized] = nil
        Print(string.format(L.COMMAND_BLOCKLIST_REMOVED, normalized))
      end
      return
    end
    if action == "clear" then
      for key in pairs(DuolingwowDB.blocklist or {}) do
        DuolingwowDB.blocklist[key] = nil
      end
      Print(L.COMMAND_BLOCKLIST_CLEARED)
      return
    end
    if action == "list" then
      local list = GetBlocklistDisplay()
      Print(string.format(L.COMMAND_BLOCKLIST_LIST, list ~= "" and list or "-"))
      return
    end
    Print(L.COMMAND_UNKNOWN)
    return
  end

  if command == "status" then
    local enabled = table.concat(GetEnabledLanguageList(), ", ")
    Print(string.format(L.COMMAND_STATUS_LINE, enabled ~= "" and enabled or "-"))
    local extensions = table.concat(GetEnabledExtensionList(), ", ")
    Print(string.format(L.COMMAND_STATUS_EXTENSIONS_LINE, extensions ~= "" and extensions or "-"))
    local zoneTypes = table.concat(GetEnabledZoneTypeList(), ", ")
    Print(string.format(L.COMMAND_STATUS_TYPES_LINE, zoneTypes ~= "" and zoneTypes or "-"))
    local blocklisted = GetBlocklistDisplay()
    Print(string.format(L.COMMAND_STATUS_BLOCKLIST_LINE, blocklisted ~= "" and blocklisted or "-"))
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
