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

  local langHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  langHeader:SetPoint("TOPLEFT", desc, "BOTTOMLEFT", 0, -16)
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

  local langDropdown = CreateFrame("Button", nil, panel, "UIDropDownMenuTemplate")
  langDropdown:SetPoint("TOPLEFT", langHeader, "BOTTOMLEFT", 0, -8)

  local function UpdateLangDropdownDisplay()
    local label = GetLangDropdownLabel()
    if label == "" then
      label = " "
    end
    local caption = langDropdown.Caption or langDropdown.Text
    if not caption and langDropdown:GetName() then
      caption = _G[langDropdown:GetName() .. "Caption"] or _G[langDropdown:GetName() .. "Text"]
    end
    if not caption then
      for i = 1, langDropdown:GetNumChildren() do
        local child = select(i, langDropdown:GetChildren())
        if child and child.SetText and child:GetObjectType() == "FontString" then
          caption = child
          break
        end
      end
    end
    if caption and caption.SetText then
      caption:SetText(label)
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

  local colorHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
  colorHeader:SetPoint("TOPLEFT", langDropdown, "BOTTOMLEFT", 0, -16)
  colorHeader:SetText(L.OPTIONS_COLOR_HEADER)

  local colorPreview = panel:CreateTexture(nil, "ARTWORK")
  colorPreview:SetSize(22, 22)
  colorPreview:SetPoint("TOPLEFT", colorHeader, "BOTTOMLEFT", 0, -8)

  local function UpdateColorPreview()
    EnsureDB()
    local c = DuolingwowDB.linkColor
    colorPreview:SetColorTexture(c.r, c.g, c.b)
  end

  panel:SetScript("OnShow", function()
    EnsureDB()
    UpdateLangDropdownDisplay()
    if UIDropDownMenu_Refresh then
      UIDropDownMenu_Refresh(langDropdown)
    end
    UpdateColorPreview()
  end)

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

  local logo = panel:CreateTexture(nil, "ARTWORK")
  logo:SetSize(48, 48)
  logo:SetPoint("TOPLEFT", colorPicker, "BOTTOMLEFT", -30, -16)
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
