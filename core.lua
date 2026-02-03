local ADDON_NAME, DL = ...

local L = nil

local DEFAULT_DB = {
  enabledLanguages = {
    EN = true,
    FR = false,
  },
}

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
    if DuoLingWoWDB.enabledLanguages[lang.code] then
      table.insert(enabled, lang.code)
    end
  end
  return enabled
end

local function BuildTooltipLine(langCode, entry)
  local parts = { entry.name }
  if entry.level then
    table.insert(parts, string.format("(lvl %s)", entry.level))
  end
  if entry.continent then
    table.insert(parts, entry.continent)
  end
  return string.format("%s: %s", langCode, table.concat(parts, ", "))
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
      return string.format("|Hdlwow:%s|h|cff00d1b2[%s]|r|h", abbr, word)
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

local function OnHyperlinkEnter(_, linkData)
  if not linkData then
    return
  end
  local linkType, abbr = string.split(":", linkData)
  if linkType ~= "dlwow" or not abbr then
    return
  end

  local normalized = abbr:upper()
  local entries = GetAbbreviationEntries(normalized)
  GameTooltip:SetOwner(UIParent, "ANCHOR_CURSOR")
  GameTooltip:SetText(string.format("%s: %s", L.TOOLTIP_TITLE, normalized))

  if #entries == 0 then
    GameTooltip:AddLine(L.TOOLTIP_EMPTY, 1, 0.5, 0.5)
  else
    for _, entry in ipairs(entries) do
      GameTooltip:AddLine(BuildTooltipLine(entry.lang, entry.data), 0.9, 0.9, 0.9, true)
    end
  end

  GameTooltip:Show()
end

local function OnHyperlinkLeave(_, linkData)
  local linkType = string.match(linkData or "", "^(.-):")
  if linkType == "dlwow" then
    GameTooltip:Hide()
  end
end

local function OnItemRef(linkData)
  local linkType, abbr = string.split(":", linkData)
  if linkType ~= "dlwow" or not abbr then
    return false
  end

  local normalized = abbr:upper()
  local entries = GetAbbreviationEntries(normalized)
  ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE")
  ItemRefTooltip:SetText(string.format("%s: %s", L.TOOLTIP_TITLE, normalized))

  if #entries == 0 then
    ItemRefTooltip:AddLine(L.TOOLTIP_EMPTY, 1, 0.5, 0.5)
  else
    for _, entry in ipairs(entries) do
      ItemRefTooltip:AddLine(BuildTooltipLine(entry.lang, entry.data), 0.9, 0.9, 0.9, true)
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

local function RegisterHyperlinkHooks()
  if type(FloatingChatFrame_OnHyperlinkEnter) == "function" then
    hooksecurefunc("FloatingChatFrame_OnHyperlinkEnter", OnHyperlinkEnter)
  elseif type(ChatFrame_OnHyperlinkEnter) == "function" then
    hooksecurefunc("ChatFrame_OnHyperlinkEnter", OnHyperlinkEnter)
  end

  if type(FloatingChatFrame_OnHyperlinkLeave) == "function" then
    hooksecurefunc("FloatingChatFrame_OnHyperlinkLeave", OnHyperlinkLeave)
  elseif type(ChatFrame_OnHyperlinkLeave) == "function" then
    hooksecurefunc("ChatFrame_OnHyperlinkLeave", OnHyperlinkLeave)
  end
end

local function Initialize()
  L = DL:GetStrings()
  DuoLingWoWDB = DeepCopyDefaults(DEFAULT_DB, DuoLingWoWDB or {})
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

  RegisterHyperlinkHooks()
  RegisterItemRefHook()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(_, event, addonName)
  if addonName == ADDON_NAME then
    Initialize()
  end
end)

DL.GetEnabledLanguages = GetEnabledLanguages
