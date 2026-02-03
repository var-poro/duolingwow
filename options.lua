local ADDON_NAME, DL = ...

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
    if not DuolingwowDB.linkColor then
      DuolingwowDB.linkColor = GetDefaultDB().linkColor
    end
  end
end

local function ToggleLanguage(langCode, isEnabled)
  EnsureDB()
  DuolingwowDB.enabledLanguages[langCode] = isEnabled
end

local function CreateCheckbox(parent, label, initial, onClick)
  local check = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
  check.Text:SetText(label)
  check:SetChecked(initial)
  check:SetScript("OnClick", function(self)
    onClick(self:GetChecked())
  end)
  return check
end

local function CreateOptionsPanel()
  EnsureDB()
  local L = DL:GetStrings()
  local panel = CreateFrame("Frame")
  panel.name = L.ADDON_NAME
  panel.parent = "Chat"

  local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
  title:SetPoint("TOPLEFT", 16, -16)
  title:SetText(L.OPTIONS_TITLE)

  local desc = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
  desc:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
  desc:SetText(L.OPTIONS_DESC)
  desc:SetWidth(500)
  desc:SetJustifyH("LEFT")

  local langHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  langHeader:SetPoint("TOPLEFT", desc, "BOTTOMLEFT", 0, -16)
  langHeader:SetText(L.OPTIONS_LANG_HEADER)

  local last = langHeader
  panel.checkboxes = {}
  for _, lang in ipairs(DL:GetAvailableLanguages()) do
    local checkbox = CreateCheckbox(panel, lang.name, DuolingwowDB.enabledLanguages[lang.code], function(isEnabled)
      ToggleLanguage(lang.code, isEnabled)
    end)
    checkbox:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -8)
    last = checkbox
    panel.checkboxes[lang.code] = checkbox
  end

  panel:SetScript("OnShow", function()
    EnsureDB()
    for _, lang in ipairs(DL:GetAvailableLanguages()) do
      local checkbox = panel.checkboxes[lang.code]
      if checkbox then
        checkbox:SetChecked(DuolingwowDB.enabledLanguages[lang.code])
      end
    end
  end)

  local colorHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  colorHeader:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -16)
  colorHeader:SetText(L.OPTIONS_COLOR_HEADER)

  local colorPicker = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  colorPicker:SetSize(180, 22)
  colorPicker:SetPoint("TOPLEFT", colorHeader, "BOTTOMLEFT", 0, -8)
  colorPicker:SetText(L.OPTIONS_COLOR_PICKER)
  colorPicker:SetScript("OnClick", function()
    local r, g, b = DuolingwowDB.linkColor.r, DuolingwowDB.linkColor.g, DuolingwowDB.linkColor.b
    ColorPickerFrame.hasOpacity = false
    ColorPickerFrame.previousValues = { r = r, g = g, b = b }
    ColorPickerFrame.func = function()
      local cr, cg, cb = ColorPickerFrame:GetColorRGB()
      DuolingwowDB.linkColor = { r = cr, g = cg, b = cb }
    end
    ColorPickerFrame.swatchFunc = ColorPickerFrame.func
    ColorPickerFrame.cancelFunc = function()
      local prev = ColorPickerFrame.previousValues
      if prev then
        DuolingwowDB.linkColor = { r = prev.r, g = prev.g, b = prev.b }
      end
    end
    ColorPickerFrame:SetColorRGB(r, g, b)
    ColorPickerFrame:Show()
  end)

  local creditsHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  creditsHeader:SetPoint("TOPLEFT", colorPicker, "BOTTOMLEFT", 0, -16)
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
