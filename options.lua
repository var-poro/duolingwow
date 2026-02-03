local ADDON_NAME, DL = ...

local DEFAULT_DB = {
  enabledLanguages = {
    EN = true,
    FR = false,
  },
  linkColor = {
    r = 1,
    g = 0.82,
    b = 0,
  },
}

local function EnsureDB()
  if not DuoLingWoWDB then
    DuoLingWoWDB = DEFAULT_DB
  else
    if not DuoLingWoWDB.enabledLanguages then
      DuoLingWoWDB.enabledLanguages = DEFAULT_DB.enabledLanguages
    end
    if not DuoLingWoWDB.linkColor then
      DuoLingWoWDB.linkColor = DEFAULT_DB.linkColor
    end
  end
end

local function ToggleLanguage(langCode, isEnabled)
  EnsureDB()
  DuoLingWoWDB.enabledLanguages[langCode] = isEnabled
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
  for _, lang in ipairs(DL:GetAvailableLanguages()) do
    local checkbox = CreateCheckbox(panel, lang.name, DuoLingWoWDB.enabledLanguages[lang.code], function(isEnabled)
      ToggleLanguage(lang.code, isEnabled)
    end)
    checkbox:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -8)
    last = checkbox
  end

  local colorHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  colorHeader:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -16)
  colorHeader:SetText(L.OPTIONS_COLOR_HEADER)

  local colorPicker = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  colorPicker:SetSize(180, 22)
  colorPicker:SetPoint("TOPLEFT", colorHeader, "BOTTOMLEFT", 0, -8)
  colorPicker:SetText(L.OPTIONS_COLOR_PICKER)
  colorPicker:SetScript("OnClick", function()
    local r, g, b = DuoLingWoWDB.linkColor.r, DuoLingWoWDB.linkColor.g, DuoLingWoWDB.linkColor.b
    ColorPickerFrame.hasOpacity = false
    ColorPickerFrame.previousValues = { r = r, g = g, b = b }
    ColorPickerFrame.func = function()
      local cr, cg, cb = ColorPickerFrame:GetColorRGB()
      DuoLingWoWDB.linkColor = { r = cr, g = cg, b = cb }
    end
    ColorPickerFrame.cancelFunc = function()
      local prev = ColorPickerFrame.previousValues
      if prev then
        DuoLingWoWDB.linkColor = { r = prev.r, g = prev.g, b = prev.b }
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

local function OpenOptions()
  if Settings and Settings.OpenToCategory then
    local category = Settings.GetCategory and Settings.GetCategory("DuoLingWoW")
    if category and category.ID then
      Settings.OpenToCategory(category.ID)
    else
      Settings.OpenToCategory("DuoLingWoW")
    end
  else
    InterfaceOptionsFrame_OpenToCategory(panel)
    InterfaceOptionsFrame_OpenToCategory(panel)
  end
end

SLASH_DUOLINGWOW1 = "/dl"
SlashCmdList.DUOLINGWOW = OpenOptions

local panel = CreateOptionsPanel()
RegisterOptions(panel)
