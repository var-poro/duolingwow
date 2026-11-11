import sys
import lupa.lua51 as lupa

ADDON_DIR = sys.argv[1]
HARNESS = sys.argv[2]

SCENARIOS = [
    # (label, toc, locale, modern client API?)
    ("Anniversary enUS", "Duolingwow.toc", "enUS", True),
    ("Anniversary frFR", "Duolingwow.toc", "frFR", True),
    ("Anniversary legacy API", "Duolingwow.toc", "enUS", False),
    ("Forever frFR", "Duolingwow_Camelot.toc", "frFR", True),
    ("Forever enUS", "Duolingwow_Camelot.toc", "enUS", True),
    ("Forever deDE", "Duolingwow_Camelot.toc", "deDE", True),
]

TESTS = r"""
local T = DL_TEST
local check, links, click, filterMessage = T.check, T.links, T.click, T.filterMessage
local DL = T.DL
local forever = DL.Flavor == "FOREVER"

-- every dictionary entry is well formed and consistent across languages
local langs = { "EN", "FR", "DE" }
local count = 0
for key, en in pairs(DL.Dictionary.EN) do
  count = count + 1
  for _, l in ipairs(langs) do
    local e = DL.Dictionary[l][key]
    check(e ~= nil, l .. " missing key " .. key)
    if e then
      check(type(e.name) == "string" and e.name ~= "", l .. " name " .. key)
      check(e.level == nil or e.level:match("^%d+%-?%d*$"), l .. " level format " .. key .. " " .. tostring(e.level))
      check(e.level == en.level and e.extension == en.extension and e.zoneType == en.zoneType
        and e.faction == en.faction and e.strict == en.strict, l .. " metadata mismatch " .. key)
      local ok = false
      for _, z in ipairs(DL:GetAvailableZoneTypes()) do if z.code == e.zoneType then ok = true end end
      check(ok, "zone type " .. key)
    end
  end
end
for _, l in ipairs({ "FR", "DE" }) do
  for key in pairs(DL.Dictionary[l]) do check(DL.Dictionary.EN[key] ~= nil, l .. " extra key " .. key) end
end
T.log("entries: " .. count)

-- link creation
local msg = filterMessage("CHAT_MSG_CHANNEL", "LFM SFK need heal, then Strat UD")
local l = links(msg)
check(#l == 3, "expected 3 links (SFK, Strat, UD) got " .. #l .. " in " .. msg)
local prefix = MODERN and "addon:Duolingwow:" or "dlwow:"
check(l[1] == prefix .. "SFK", "link payload " .. tostring(l[1]))

-- strict keys: 'if' and 'set' must not become links, 'IF' must
check(#links(filterMessage("CHAT_MSG_SAY", "if you want, set it up")) == 0, "'if'/'set' must not link")
check(#links(filterMessage("CHAT_MSG_SAY", "meet in IF")) == 1, "'IF' must link")
-- everyday-word aliases: exact case only
check(#links(filterMessage("CHAT_MSG_SAY", "strat live tonight, mount up, keep an eye under the arm")) == 1, "only 'strat' links in lowercase sentence")
check(#links(filterMessage("CHAT_MSG_SAY", "LFM Strat Live")) == 2, "'Strat Live' links both")
check(#links(filterMessage("CHAT_MSG_SAY", "ich bin unter dir")) == 0, "German 'unter' not linked")
if not forever then
  check(#links(filterMessage("CHAT_MSG_SAY", "keep an eye on it")) == 0, "'eye' (shared abbreviation) not linked")
  check(#links(filterMessage("CHAT_MSG_SAY", "LF tank Eye")) == 1, "'Eye' linked")
  check(#links(filterMessage("CHAT_MSG_SAY", "lfm sunwell")) == 1, "loose shared abbreviation still case-insensitive")
end

-- existing links are preserved untouched
local item = "|cff0070dd|Hitem:1234::::::::60:::::|h[SFK Blade]|h|r"
local out = filterMessage("CHAT_MSG_GUILD", "selling " .. item .. " from SFK")
check(out:find(item, 1, true) ~= nil, "existing item link kept intact")
check(#links(out) == 2, "item link + one new link")

-- secret values are left alone
if MODERN then
  local secret = { secret = true }
  local d, m = T.chatFilters.CHAT_MSG_PARTY[1](nil, "CHAT_MSG_PARTY", secret, "x")
  check(d == false and m == nil, "secret message untouched")
end

-- clicking a link shows the tooltip
local lines = click(prefix .. "SFK")
check(#lines >= 3, "tooltip lines for SFK: " .. #lines)
T.log("SFK tooltip: " .. table.concat(lines, " / "))
check(ItemRefTooltip.fallback == nil, "addon link must not fall through to default handler")
-- clicking a normal link still reaches the default handler
click("item:1234")
check(ItemRefTooltip.fallback == "item:1234", "non-addon links still handled by the game")

if forever then
  check(#links(filterMessage("CHAT_MSG_SAY", "sorry dc, hot heal, ks")) == 0, "strict DC/HoT/KS lowercase")
  check(#links(filterMessage("CHAT_MSG_SAY", "LFM DC and HoT and KS")) == 3, "strict DC/HoT/KS uppercase")
  local hy = click(prefix .. "Hyjal")
  T.log("Hyjal tooltip: " .. table.concat(hy, " / "))
  local n = 0
  for _, line in ipairs(hy) do if line:find("Duolingwow") then n = n + 1 end end
  check(n == 6, "Hyjal -> raid + zone x3 langs (" .. n .. ")")
  local rol = click(prefix .. "RoL")
  T.log("RoL tooltip: " .. table.concat(rol, " / "))
  check(DL.Dictionary.EN.Kara == nil and DL.Dictionary.EN.Shatt == nil, "no TBC content in Forever")
  check(DL.Dictionary.EN.MC == nil and DL.Dictionary.EN.Naxx == nil, "no MC/Naxx at Forever launch")
  local shen = click(prefix .. "Shendralas")
  check(#shen >= 2, "entry without level renders")
else
  check(DL.Dictionary.EN.Kara ~= nil, "TBC content present in Anniversary")
  local eye = click(prefix .. "Eye")
  local n = 0
  for _, line in ipairs(eye) do if line:find("Duolingwow") then n = n + 1 end end
  check(n == 6, "Eye -> TK + EotS x3 langs (" .. n .. ")")
end

-- extension filter
SlashCmdList.DUOLINGWOW("extension disable " .. (forever and "forever" or "tbc"))
local key = forever and "BMH" or "Kara"
check(#links(filterMessage("CHAT_MSG_SAY", "LFM " .. key)) == 0, "disabled extension hides " .. key)
SlashCmdList.DUOLINGWOW("extension enable " .. (forever and "forever" or "tbc"))
check(#links(filterMessage("CHAT_MSG_SAY", "LFM " .. key)) == 1, "re-enabled extension shows " .. key)

-- blocklist
SlashCmdList.DUOLINGWOW("blocklist add sfk")
check(#links(filterMessage("CHAT_MSG_SAY", "LFM SFK")) == 0, "blocklist works")
SlashCmdList.DUOLINGWOW("blocklist clear")

-- help output
SlashCmdList.DUOLINGWOW("help")
local helpText = table.concat(T.printed, "\n")
check(not helpText:find("%%s"), "help strings formatted")
check(helpText:find(forever and "Vanilla/Forever" or "Vanilla/TBC", 1, true) ~= nil, "help lists extensions")

-- options panel + color picker
local cat = T.registeredCategory()
check(cat and cat.registered, "options panel registered")
local panel = cat.panel
check(panel ~= nil, "panel exists")
-- find the color button: first Button created with an OnClick and no name
local clicked = false
for _, f in ipairs(DL_FRAMES) do
  if f.kind == "Button" and f.text and f.scripts.OnClick and (f.text:find("olor") or f.text:find("ouleur") or f.text:find("arbe")) then
    f.scripts.OnClick(f)
    clicked = true
  end
end
check(clicked, "color button found")
if MODERN then
  check(ColorPickerFrame.info ~= nil and ColorPickerFrame.info.swatchFunc ~= nil, "SetupColorPickerAndShow used")
  ColorPickerFrame.info.swatchFunc()
  check(DuolingwowDB.linkColor.r == 0.1, "color saved")
  ColorPickerFrame.info.cancelFunc()
  check(DuolingwowDB.linkColor.r ~= 0.1, "color restored on cancel")
else
  check(ColorPickerFrame.rgb ~= nil, "legacy color picker used")
end
"""


def run(label, toc, locale, modern):
    lua = lupa.LuaRuntime(unpack_returned_tuples=True)
    g = lua.globals()
    g.ADDON_DIR = ADDON_DIR
    g.TOC_FILE = toc
    g.LOCALE = locale
    g.MODERN = modern
    g.SAVED_DB = lua.eval("{ enabledLanguages = { EN = true, FR = true, DE = true } }")
    harness = open(HARNESS, encoding="utf-8").read()
    # expose frame list for the tests
    harness = harness.replace("local frames = {}", "local frames = {}\nDL_FRAMES = frames")
    lua.execute(harness)
    lua.execute(TESTS)
    res = g.DL_TEST.results
    logs = [res.log[i] for i in range(1, len(res.log) + 1)]
    print(f"== {label}: {res.checks - res.failures}/{res.checks} checks passed")
    for line in logs:
        print("   ", line.replace("|r", "").replace("|cffffff00", "").replace("|cffffffff", "")[:400])
    return res.failures


fails = sum(run(*s) for s in SCENARIOS)
print("TOTAL FAILURES:", fails)
sys.exit(1 if fails else 0)
