-- Minimal WoW API simulation to load and exercise Duolingwow outside the game.
-- Globals provided by the Python driver: ADDON_DIR, TOC_FILE, LOCALE, MODERN (bool)

local results = { failures = 0, checks = 0, log = {} }
local function log(msg) table.insert(results.log, msg) end
local function check(cond, msg)
  results.checks = results.checks + 1
  if not cond then
    results.failures = results.failures + 1
    log("FAIL: " .. msg)
  end
end

-- string.split (WoW extension)
function string.split(sep, str)
  local out = {}
  for piece in (str .. sep):gmatch("(.-)" .. sep:gsub("%p", "%%%0")) do table.insert(out, piece) end
  return unpack(out)
end
strsplit = string.split

function GetLocale() return LOCALE end

-- Frames ------------------------------------------------------------------
local frames = {}
local function NewObject(kind)
  local o = { kind = kind, scripts = {}, children = {} }
  setmetatable(o, { __index = function(t, k)
    -- Any unknown *method* (WoW methods are CamelCase) is a no-op; unknown fields stay nil.
    if type(k) == "string" and k:match("^%u") and k ~= "Text" and k ~= "Caption" then
      return function(self, ...) return nil end
    end
    return nil
  end })
  o.SetScript = function(self, name, fn) self.scripts[name] = fn end
  o.GetScript = function(self, name) return self.scripts[name] end
  o.RegisterEvent = function(self, ev) self.events = self.events or {}; self.events[ev] = true end
  o.CreateFontString = function(self) return NewObject("FontString") end
  o.CreateTexture = function(self) return NewObject("Texture") end
  o.GetName = function(self) return self.name end
  o.GetNumChildren = function() return 0 end
  o.GetChildren = function() return end
  o.GetText = function(self) return self.text or "" end
  o.SetText = function(self, t) self.text = t end
  return o
end
-- Tooltip ---------------------------------------------------------------
local function MakeTooltip(o)
  o.lines = {}
  o.ClearLines = function(self) self.lines = {} end
  o.AddLine = function(self, t) table.insert(self.lines, t) end
  o.AddDoubleLine = function(self, a, b) table.insert(self.lines, a .. " || " .. b) end
  o.NumLines = function(self) return #self.lines end
  o.Show = function(self) self.shown = true end
  o.Hide = function(self) self.shown = false end
  o.IsShown = function(self) return self.shown == true end
  return o
end

function CreateFrame(kind, name, parent, template)
  local f = NewObject(kind)
  f.name = name
  f.template = template
  if kind == "GameTooltip" then MakeTooltip(f) end
  table.insert(frames, f)
  if name then _G[name] = f end
  return f
end
UIParent = NewObject("Frame")
GameFontNormalLarge, GameFontHighlight, GameFontDisableSmall, GameTooltipText = {}, {}, {}, {}
UISpecialFrames = {}

ItemRefTooltip = MakeTooltip(NewObject("GameTooltip"))
ItemRefTooltip.name = "ItemRefTooltip"

-- Chat filters ----------------------------------------------------------
local chatFilters = {}
local function addFilter(event, fn)
  chatFilters[event] = chatFilters[event] or {}
  table.insert(chatFilters[event], fn)
end
if MODERN then
  ChatFrameUtil = { AddMessageEventFilter = addFilter }
  -- the deprecated alias also exists in real clients
  ChatFrame_AddMessageEventFilter = function() error("deprecated API should not be used") end
  LinkTypes = { AddOn = "addon" }
  local callbacks = {}
  EventRegistry = {
    RegisterCallback = function(self, ev, fn, owner)
      assert(type(owner) ~= "number")
      callbacks[ev] = callbacks[ev] or {}
      table.insert(callbacks[ev], { fn = fn, owner = owner })
    end,
    TriggerEvent = function(self, ev, ...)
      for _, cb in ipairs(callbacks[ev] or {}) do cb.fn(cb.owner, ...) end
    end,
  }
  -- Simplified real SetItemRef: addon links -> EventRegistry "SetItemRef"
  function SetItemRef(link, text, button, frame)
    if link:sub(1, 6) == "addon:" then
      EventRegistry:TriggerEvent("SetItemRef", link, text, button, frame)
      return
    end
    ItemRefTooltip.fallback = link
  end
  issecretvalue = function(v) return type(v) == "table" and v.secret == true end
  ColorPickerFrame = NewObject("Frame")
  ColorPickerFrame.SetupColorPickerAndShow = function(self, info) self.info = info; self.shown = true end
  ColorPickerFrame.GetColorRGB = function() return 0.1, 0.2, 0.3 end
  ColorPickerFrame.SetColorRGB = nil -- does not exist on Mainline/Forever frames
else
  ChatFrame_AddMessageEventFilter = addFilter
  function SetItemRef(link) ItemRefTooltip.fallback = link end
  ColorPickerFrame = NewObject("Frame")
  ColorPickerFrame.SetupColorPickerAndShow = false
  ColorPickerFrame.SetColorRGB = function(self, r, g, b) self.rgb = { r, g, b } end
  ColorPickerFrame.GetColorRGB = function() return 0.1, 0.2, 0.3 end
end

-- Settings / dropdowns / misc ------------------------------------------
local registeredCategory
Settings = {
  GetCategory = function() return nil end,
  RegisterCanvasLayoutCategory = function(panel, name) registeredCategory = { panel = panel, name = name }; return registeredCategory end,
  RegisterAddOnCategory = function(cat) cat.registered = true end,
}
UIDropDownMenu_SetWidth = function() end
UIDropDownMenu_Initialize = function(frame, fn) frame.init = fn end
UIDropDownMenu_Refresh = function() end
UIDropDownMenu_AddButton = function() end
ToggleDropDownMenu = function() end
C_Timer = { After = function(_, fn) fn() end }
SlashCmdList = {}
local printed = {}
DEFAULT_CHAT_FRAME = { AddMessage = function(_, m) table.insert(printed, m) end }

-- Load the addon as the client would ----------------------------------
local DL = {}
local ADDON_NAME = "Duolingwow"
local tocFiles = {}
for line in io.lines(ADDON_DIR .. "/" .. TOC_FILE) do
  line = line:gsub("\r", "")
  if line ~= "" and not line:find("^##") and not line:find("^#") then
    table.insert(tocFiles, line)
  end
end
for _, file in ipairs(tocFiles) do
  local chunk, err = loadfile(ADDON_DIR .. "/" .. file)
  if not chunk then error("load error in " .. file .. ": " .. err) end
  chunk(ADDON_NAME, DL)
end
-- SavedVariables load, then ADDON_LOADED
DuolingwowDB = SAVED_DB
for _, f in ipairs(frames) do
  if f.events and f.events.ADDON_LOADED and f.scripts.OnEvent then
    f.scripts.OnEvent(f, "ADDON_LOADED", ADDON_NAME)
  end
end

-- Helpers -----------------------------------------------------------------
local function filterMessage(event, msg)
  local filters = chatFilters[event]
  check(filters and #filters == 1, "exactly one filter registered for " .. event)
  local discard, newMsg = filters[1](nil, event, msg, "Someone")
  check(discard == false, "filter must never discard")
  return newMsg or msg
end
local function links(msg)
  local out = {}
  for payload, text in msg:gmatch("|H(.-)|h(.-)|h") do table.insert(out, payload) end
  return out
end
-- Clicks a link and returns the lines of the addon tooltip (empty if it is hidden).
local function click(payload)
  ItemRefTooltip.lines = {}
  ItemRefTooltip.fallback = nil
  SetItemRef(payload, "", "LeftButton", nil)
  local tip = _G.DuolingwowTooltip
  if tip and tip:IsShown() then return tip.lines end
  return {}
end
DL_TEST = { DL = DL, filterMessage = filterMessage, links = links, click = click, check = check, log = log,
  printed = printed, results = results, registeredCategory = function() return registeredCategory end,
  chatFilters = chatFilters }
