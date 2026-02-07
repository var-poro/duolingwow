local ADDON_NAME, DL = ...

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
    linkColor = {
      r = 1,
      g = 0.82,
      b = 0,
    },
  }
end

local function EnsureDB()
  if not DuolingwowDB and DuoLingWoWDB then
    DuolingwowDB = DuoLingWoWDB
    DuoLingWoWDB = nil
  end
  if not DuolingwowDB then
    DuolingwowDB = GetDefaultDB()
  else
    if not DuolingwowDB.enabledLanguages then
      DuolingwowDB.enabledLanguages = GetDefaultEnabledLanguages()
    end
    if not DuolingwowDB.enabledExtensions then
      DuolingwowDB.enabledExtensions = GetDefaultEnabledExtensions()
    end
    if not DuolingwowDB.enabledZoneTypes then
      DuolingwowDB.enabledZoneTypes = GetDefaultEnabledZoneTypes()
    end
    if not DuolingwowDB.blocklist then
      DuolingwowDB.blocklist = {}
    end
    if not DuolingwowDB.linkColor then
      DuolingwowDB.linkColor = GetDefaultDB().linkColor
    end
  end
end

local function ToggleLanguage(langCode, isEnabled)
  EnsureDB()
  DuolingwowDB.enabledLanguages[langCode] = isEnabled
end

local DROPDOWN_WIDTH = 260
local DROPDOWN_CAPTION_MAX_WIDTH = 230
local DROPDOWN_CAPTION_MAX_CHARS = 42

local function TruncateLabel(label)
  if #label <= DROPDOWN_CAPTION_MAX_CHARS then
    return label
  end
  return label:sub(1, DROPDOWN_CAPTION_MAX_CHARS - 3) .. "..."
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

local function GetSortedBlocklist()
  EnsureDB()
  local entries = {}
  for key in pairs(DuolingwowDB.blocklist or {}) do
    table.insert(entries, key)
  end
  table.sort(entries)
  return entries
end

local function GetDropdownCaption(dropdown)
  local caption = dropdown.Caption or dropdown.Text
  if not caption and dropdown:GetName() then
    caption = _G[dropdown:GetName() .. "Caption"] or _G[dropdown:GetName() .. "Text"]
  end
  if not caption then
    for i = 1, dropdown:GetNumChildren() do
      local child = select(i, dropdown:GetChildren())
      if child and child.SetText and child:GetObjectType() == "FontString" then
        caption = child
        break
      end
    end
  end
  return caption
end

local function GetLogoPath()
  return "Interface\\AddOns\\DuoLingWoW\\logo.tga"
end

local function CreateOptionsPanel()
  EnsureDB()
  local L = DL:GetStrings()
  local panel = CreateFrame("Frame")
  panel.name = L.ADDON_NAME
  panel.parent = "Chat"

  local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
  title:SetPoint("TOPLEFT", 0, -16)
  title:SetText(L.OPTIONS_TITLE)

  local desc = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
  desc:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
  desc:SetText(L.OPTIONS_DESC)
  desc:SetWidth(500)
  desc:SetJustifyH("LEFT")

  local colorHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  colorHeader:SetPoint("TOPLEFT", desc, "BOTTOMLEFT", 0, -16)
  colorHeader:SetText(L.OPTIONS_COLOR_HEADER)

  local colorPreview = panel:CreateTexture(nil, "ARTWORK")
  colorPreview:SetSize(22, 22)
  colorPreview:SetPoint("TOPLEFT", colorHeader, "BOTTOMLEFT", 0, -8)

  local function UpdateColorPreview()
    EnsureDB()
    local c = DuolingwowDB.linkColor
    local r = (c and c.r ~= nil) and c.r or 1
    local g = (c and c.g ~= nil) and c.g or 0.82
    local b = (c and c.b ~= nil) and c.b or 0
    colorPreview:SetColorTexture(r, g, b)
  end

  local colorPicker = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  colorPicker:SetSize(180, 22)
  colorPicker:SetPoint("TOPLEFT", colorPreview, "TOPRIGHT", 8, 0)
  colorPicker:SetText(L.OPTIONS_COLOR_PICKER)
  colorPicker:SetScript("OnClick", function()
    local r, g, b = DuolingwowDB.linkColor.r, DuolingwowDB.linkColor.g, DuolingwowDB.linkColor.b
    ColorPickerFrame.hasOpacity = false
    ColorPickerFrame.previousValues = { r = r, g = g, b = b }
    ColorPickerFrame.func = function()
      local cr, cg, cb = ColorPickerFrame:GetColorRGB()
      DuolingwowDB.linkColor = { r = cr, g = cg, b = cb }
      UpdateColorPreview()
    end
    ColorPickerFrame.swatchFunc = ColorPickerFrame.func
    ColorPickerFrame.cancelFunc = function()
      local prev = ColorPickerFrame.previousValues
      if prev then
        DuolingwowDB.linkColor = { r = prev.r, g = prev.g, b = prev.b }
      end
      UpdateColorPreview()
    end
    ColorPickerFrame:SetColorRGB(r, g, b)
    ColorPickerFrame:Show()
  end)

  UpdateColorPreview()

  local langHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  langHeader:SetPoint("TOPLEFT", colorPicker, "BOTTOMLEFT", -(22 + 8), -16)
  langHeader:SetText(L.OPTIONS_LANG_HEADER)

  local function GetLangDropdownLabel()
    EnsureDB()
    local names = {}
    for _, lang in ipairs(DL:GetAvailableLanguages()) do
      if DuolingwowDB.enabledLanguages[lang.code] then
        table.insert(names, lang.name)
      end
    end
    return #names > 0 and table.concat(names, ", ") or ""
  end

  local langDropdown = CreateFrame("Button", "DuolingwowLangDropdown", panel, "UIDropDownMenuTemplate")
  langDropdown:SetPoint("TOPLEFT", langHeader, "BOTTOMLEFT", 0, -8)
  if UIDropDownMenu_SetWidth then
    UIDropDownMenu_SetWidth(langDropdown, DROPDOWN_WIDTH)
  end

  local function UpdateLangDropdownDisplay()
    local label = GetLangDropdownLabel()
    if label == "" then
      label = " "
    else
      label = TruncateLabel(label)
    end
    local caption = GetDropdownCaption(langDropdown)
    if caption then
      if caption.SetWidth then
        caption:SetWidth(DROPDOWN_CAPTION_MAX_WIDTH)
      end
      if caption.SetWordWrap then
        caption:SetWordWrap(false)
      end
      if caption.SetText then
        caption:SetText(label)
      end
    end
  end

  local function MultiSelectLang_Init()
    for _, lang in ipairs(DL:GetAvailableLanguages()) do
      local opt = {
        text = lang.name,
        value = lang.code,
        checked = DuolingwowDB.enabledLanguages[lang.code],
        func = function()
          EnsureDB()
          DuolingwowDB.enabledLanguages[lang.code] = not DuolingwowDB.enabledLanguages[lang.code]
          UIDropDownMenu_Refresh(langDropdown)
          UpdateLangDropdownDisplay()
        end,
      }
      UIDropDownMenu_AddButton(opt)
    end
  end

  UIDropDownMenu_Initialize(langDropdown, MultiSelectLang_Init)
  langDropdown:SetScript("OnClick", function()
    ToggleDropDownMenu(1, nil, langDropdown, "cursor", 0, 0)
  end)
  UpdateLangDropdownDisplay()

  local extensionHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  extensionHeader:SetPoint("TOPLEFT", langDropdown, "BOTTOMLEFT", 0, -16)
  extensionHeader:SetText(L.OPTIONS_EXTENSION_HEADER)

  local function GetExtensionDropdownLabel()
    EnsureDB()
    local names = {}
    for _, ext in ipairs(DL:GetAvailableExtensions()) do
      if DuolingwowDB.enabledExtensions[ext.code] then
        table.insert(names, ext.name)
      end
    end
    return #names > 0 and table.concat(names, ", ") or ""
  end

  local extensionDropdown = CreateFrame("Button", "DuolingwowExtensionDropdown", panel, "UIDropDownMenuTemplate")
  extensionDropdown:SetPoint("TOPLEFT", extensionHeader, "BOTTOMLEFT", 0, -8)
  if UIDropDownMenu_SetWidth then
    UIDropDownMenu_SetWidth(extensionDropdown, DROPDOWN_WIDTH)
  end

  local function UpdateExtensionDropdownDisplay()
    local label = GetExtensionDropdownLabel()
    if label == "" then
      label = " "
    else
      label = TruncateLabel(label)
    end
    local caption = GetDropdownCaption(extensionDropdown)
    if caption then
      if caption.SetWidth then
        caption:SetWidth(DROPDOWN_CAPTION_MAX_WIDTH)
      end
      if caption.SetWordWrap then
        caption:SetWordWrap(false)
      end
      if caption.SetText then
        caption:SetText(label)
      end
    end
  end

  local function MultiSelectExtension_Init()
    for _, ext in ipairs(DL:GetAvailableExtensions()) do
      local opt = {
        text = ext.name,
        value = ext.code,
        checked = DuolingwowDB.enabledExtensions[ext.code],
        func = function()
          EnsureDB()
          DuolingwowDB.enabledExtensions[ext.code] = not DuolingwowDB.enabledExtensions[ext.code]
          UIDropDownMenu_Refresh(extensionDropdown)
          UpdateExtensionDropdownDisplay()
        end,
      }
      UIDropDownMenu_AddButton(opt)
    end
  end

  UIDropDownMenu_Initialize(extensionDropdown, MultiSelectExtension_Init)
  extensionDropdown:SetScript("OnClick", function()
    ToggleDropDownMenu(1, nil, extensionDropdown, "cursor", 0, 0)
  end)
  UpdateExtensionDropdownDisplay()

  local typeHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  typeHeader:SetPoint("TOPLEFT", extensionDropdown, "BOTTOMLEFT", 0, -16)
  typeHeader:SetText(L.OPTIONS_TYPE_HEADER)

  local function GetTypeDropdownLabel()
    EnsureDB()
    local names = {}
    for _, zoneType in ipairs(DL:GetAvailableZoneTypes()) do
      if DuolingwowDB.enabledZoneTypes[zoneType.code] then
        table.insert(names, zoneType.name)
      end
    end
    return #names > 0 and table.concat(names, ", ") or ""
  end

  local typeDropdown = CreateFrame("Button", "DuolingwowTypeDropdown", panel, "UIDropDownMenuTemplate")
  typeDropdown:SetPoint("TOPLEFT", typeHeader, "BOTTOMLEFT", 0, -8)
  if UIDropDownMenu_SetWidth then
    UIDropDownMenu_SetWidth(typeDropdown, DROPDOWN_WIDTH)
  end

  local function UpdateTypeDropdownDisplay()
    local label = GetTypeDropdownLabel()
    if label == "" then
      label = " "
    else
      label = TruncateLabel(label)
    end
    local caption = GetDropdownCaption(typeDropdown)
    if caption then
      if caption.SetWidth then
        caption:SetWidth(DROPDOWN_CAPTION_MAX_WIDTH)
      end
      if caption.SetWordWrap then
        caption:SetWordWrap(false)
      end
      if caption.SetText then
        caption:SetText(label)
      end
    end
  end

  local function MultiSelectType_Init()
    for _, zoneType in ipairs(DL:GetAvailableZoneTypes()) do
      local opt = {
        text = zoneType.name,
        value = zoneType.code,
        checked = DuolingwowDB.enabledZoneTypes[zoneType.code],
        func = function()
          EnsureDB()
          DuolingwowDB.enabledZoneTypes[zoneType.code] = not DuolingwowDB.enabledZoneTypes[zoneType.code]
          UIDropDownMenu_Refresh(typeDropdown)
          UpdateTypeDropdownDisplay()
        end,
      }
      UIDropDownMenu_AddButton(opt)
    end
  end

  UIDropDownMenu_Initialize(typeDropdown, MultiSelectType_Init)
  typeDropdown:SetScript("OnClick", function()
    ToggleDropDownMenu(1, nil, typeDropdown, "cursor", 0, 0)
  end)
  UpdateTypeDropdownDisplay()

  local function RefreshAllDropdownDisplays()
    UpdateLangDropdownDisplay()
    UpdateExtensionDropdownDisplay()
    UpdateTypeDropdownDisplay()
  end

  local blocklistHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  blocklistHeader:SetPoint("TOPLEFT", typeDropdown, "BOTTOMLEFT", 0, -16)
  blocklistHeader:SetText(L.OPTIONS_BLOCKLIST_HEADER)

  local blocklistDesc = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
  blocklistDesc:SetPoint("TOPLEFT", blocklistHeader, "BOTTOMLEFT", 0, -8)
  blocklistDesc:SetText(L.OPTIONS_BLOCKLIST_DESC)
  blocklistDesc:SetWidth(500)
  blocklistDesc:SetJustifyH("LEFT")

  local blocklistInput = CreateFrame("EditBox", nil, panel, "InputBoxTemplate")
  blocklistInput:SetSize(180, 20)
  blocklistInput:SetPoint("TOPLEFT", blocklistDesc, "BOTTOMLEFT", 0, -8)
  blocklistInput:SetAutoFocus(false)
  blocklistInput:SetScript("OnEscapePressed", function(self)
    self:ClearFocus()
  end)
  blocklistInput:SetText("")

  local function GetBlocklistDisplay()
    local entries = GetSortedBlocklist()
    if #entries == 0 then
      return L.OPTIONS_BLOCKLIST_EMPTY
    end
    return table.concat(entries, ", ")
  end

  local blocklistDisplay = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
  blocklistDisplay:SetPoint("TOPLEFT", blocklistInput, "BOTTOMLEFT", 0, -8)
  blocklistDisplay:SetWidth(500)
  blocklistDisplay:SetJustifyH("LEFT")

  local function UpdateBlocklistDisplay()
    blocklistDisplay:SetText(string.format(L.OPTIONS_BLOCKLIST_LIST, GetBlocklistDisplay()))
  end

  local blocklistAdd = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  blocklistAdd:SetSize(90, 22)
  blocklistAdd:SetPoint("LEFT", blocklistInput, "RIGHT", 8, 0)
  blocklistAdd:SetText(L.OPTIONS_BLOCKLIST_ADD)
  blocklistAdd:SetScript("OnClick", function()
    EnsureDB()
    local normalized = NormalizeBlocklistKey(blocklistInput:GetText())
    if normalized then
      DuolingwowDB.blocklist[normalized] = true
      blocklistInput:SetText("")
      UpdateBlocklistDisplay()
    end
  end)

  local blocklistRemove = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  blocklistRemove:SetSize(90, 22)
  blocklistRemove:SetPoint("LEFT", blocklistAdd, "RIGHT", 8, 0)
  blocklistRemove:SetText(L.OPTIONS_BLOCKLIST_REMOVE)
  blocklistRemove:SetScript("OnClick", function()
    EnsureDB()
    local normalized = NormalizeBlocklistKey(blocklistInput:GetText())
    if normalized then
      DuolingwowDB.blocklist[normalized] = nil
      blocklistInput:SetText("")
      UpdateBlocklistDisplay()
    end
  end)

  local blocklistClear = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  blocklistClear:SetSize(90, 22)
  blocklistClear:SetPoint("LEFT", blocklistRemove, "RIGHT", 8, 0)
  blocklistClear:SetText(L.OPTIONS_BLOCKLIST_CLEAR)
  blocklistClear:SetScript("OnClick", function()
    EnsureDB()
    for key in pairs(DuolingwowDB.blocklist or {}) do
      DuolingwowDB.blocklist[key] = nil
    end
    UpdateBlocklistDisplay()
  end)

  panel:SetScript("OnShow", function()
    EnsureDB()
    if UIDropDownMenu_Refresh then
      UIDropDownMenu_Refresh(langDropdown)
      UIDropDownMenu_Refresh(extensionDropdown)
      UIDropDownMenu_Refresh(typeDropdown)
    end
    RefreshAllDropdownDisplays()
    UpdateColorPreview()
    UpdateBlocklistDisplay()
    if C_Timer and C_Timer.After then
      C_Timer.After(0, function()
        RefreshAllDropdownDisplays()
        UpdateColorPreview()
        UpdateBlocklistDisplay()
      end)
    end
  end)

  local logo = panel:CreateTexture(nil, "ARTWORK")
  logo:SetSize(48, 48)
  logo:SetPoint("TOPLEFT", blocklistDisplay, "BOTTOMLEFT", 0, -16)
  logo:SetTexture(GetLogoPath())

  local creditsHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  creditsHeader:SetPoint("TOPLEFT", logo, "TOPRIGHT", 12, 0)
  creditsHeader:SetText(L.OPTIONS_CREDITS_HEADER)

  local credits = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
  credits:SetPoint("TOPLEFT", creditsHeader, "BOTTOMLEFT", 0, -8)
  credits:SetText(L.OPTIONS_CREDITS)
  credits:SetWidth(500)
  credits:SetJustifyH("LEFT")

  local github = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
  github:SetPoint("TOPLEFT", credits, "BOTTOMLEFT", 0, -8)
  github:SetText(L.OPTIONS_GITHUB)
  github:SetTextColor(0.1, 0.6, 1)
  github:SetWidth(500)
  github:SetJustifyH("LEFT")

  return panel
end

local function RegisterOptions(panel)
  if Settings and Settings.RegisterCanvasLayoutCategory then
    local parentCategory = Settings.GetCategory and Settings.GetCategory("Chat")
    local category = Settings.RegisterCanvasLayoutCategory(panel, panel.name, parentCategory)
    Settings.RegisterAddOnCategory(category, parentCategory)
  else
    InterfaceOptions_AddCategory(panel)
  end
end

local panel = CreateOptionsPanel()
RegisterOptions(panel)
