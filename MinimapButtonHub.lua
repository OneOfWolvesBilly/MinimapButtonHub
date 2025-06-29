-- MinimapButtonHub.lua
local addonName, addon = ...
------------------------------------------------
-- Load Localization Table (addon.L)
------------------------------------------------
-- addon.L = addon.L or {}
local L_M = addon.L.Main or {}

------------------------------------------------
-- Debug mode flag: set to `true` to enable debug output globally.
------------------------------------------------
local debugMode = false

------------------------------------------------
-- Debug print helper.
-- Prints messages to chat only when debugMode is enabled.
-- The message is prefixed with a blue "[MBH-DEBUG]" tag for visibility.
------------------------------------------------
function addon.debugPrint(...)
  if debugMode then
    print("|cff9999ff[MBH-DEBUG]|r", ...)
  end
end

------------------------------------------------
-- Error print function
-- Only prints error messages when debugMode is true.
-- The messages will appear in red with a "[MBH-ERROR]" prefix.
------------------------------------------------
function addon.errorPrint(...)
  if debugMode then
    print("|cffff4444[MBH-ERROR]|r", ...)
  end
end

------------------------------------------------
-- LibDataBroker Data Object Registration
-- Defines the icon, tooltip, and click behavior for the MBH minimap button
------------------------------------------------
local LDB = LibStub("LibDataBroker-1.1"):NewDataObject("MinimapButtonHub", {
  -- Type of data object: 'data source' shows both icon and text (text can be hidden by LibDBIcon)
  type = "data source",
  -- Icon to be displayed on the minimap button
  icon = "Interface\\AddOns\\MinimapButtonHub\\icon.blp",
  -- Optional label text (not visible with LibDBIcon by default)
  text = "MBH",

  -- Click behavior: right-click opens settings, left-click toggles button display
  OnClick = function(_, button)
    if button == "RightButton" then
      addon.MBH:OpenSettings()
    else
      if addon.MBH.isExpanded then
        addon.MBH:CollapseButtons()
      else
        addon.MBH:ExpandButtons()
      end
      addon.MBH.isExpanded = not addon.MBH.isExpanded
    end
  end,

  -- Tooltip display when hovering over the icon
  OnTooltipShow = function(tooltip)
    tooltip:AddLine(L_M["MAIN_TITLE"] or "Minimap Button Hub", 1, 1, 1)
    tooltip:AddDoubleLine(L_M["MAIN_TIP1_KEY"] or "Left-click", L_M["MAIN_TIP1_VALUE"] or "Show / Hide buttons")
    tooltip:AddDoubleLine(L_M["MAIN_TIP2_KEY"] or "Right-click", L_M["MAIN_TIP2_VALUE"] or "Open settings")
  end,
})

------------------------------------------------
-- Core Variables and Constants
-- Initializes the MBH frame and declares local state
------------------------------------------------
local MBH = CreateFrame("Frame", "MinimapButtonHubFrame", UIParent)
-- Expose MBH to the global addon table for shared access
addon.MBH = MBH

-- Table to store all integrated minimap buttons
local integratedButtons = {}

-- Timer used for delayed collapse (if needed)
-- local collapseTimer = nil

------------------------------------------------
-- Button Collection from Minimap
-- This function scans the Minimap and _G for addon buttons,
-- excluding whitelisted and malformed ones, and caches them.
------------------------------------------------
function MBH:CollectButtons()
  wipe(integratedButtons)
  local added = {}

  -- List of buttons to ignore during collection
  local whitelist = {
    ["MiniMapTracking"] = true,
    ["MinimapZoneTextButton"] = true,
    ["GameTimeFrame"] = true,
    ["TimeManagerClockButton"] = true,
    ["MiniMapCoords"] = true,
    ["ExpansionLandingPageMinimapButton"] = true,
    ["SexyMapZoneTextButton"] = true,
  }

  local MBH_ICON_NAME = "LibDBIcon10_MinimapButtonHub"
  addon.debugPrint("[MBH] === Collecting Minimap Buttons ===")

  -- Scan visible child buttons of the Minimap
  for _, obj in ipairs({ Minimap:GetChildren() }) do
    if obj and obj:IsObjectType("Button") and obj:IsVisible() then
      local name = obj:GetName() or "(no name)"
      if not whitelist[name] and not added[name]  then
        if name:match("^LibDBIcon10_") then
          addon.debugPrint("[MBH] - Skipped (LibDBIcon malformed): " .. name)
        elseif name == "(no name)" then
          addon.debugPrint("[MBH] - Skipped (no name) ")
        else
          table.insert(integratedButtons, obj)
          obj:ClearAllPoints()
          obj:SetParent(UIParent)
          obj:Hide()
          added[name] = true
          addon.debugPrint("[MBH] - Integrated: " .. name)
        end
      else
        addon.debugPrint("[MBH] - Skipped (whitelisted): " .. name)
      end
    end
  end

  addon.debugPrint("[MBH] buttons integrated (1): " .. #integratedButtons)

  -- Scan global namespace (_G) for LibDBIcon-registered buttons
    for name, obj in pairs(_G) do
    if name:match("^LibDBIcon10_") and name ~= MBH_ICON_NAME and not added[name] then
      if type(obj) == "table" and type(obj.IsShown) == "function" and type(obj.SetPoint) == "function" then
        table.insert(integratedButtons, obj)
        obj:ClearAllPoints()
        obj:SetParent(UIParent)
        obj:Hide()
        added[name] = true
        addon.debugPrint("[MBH] - Integrated (LibDBIcon global): " .. name)
      else
        addon.debugPrint("[MBH] - Skipped (_G LibDBIcon invalid): " .. name)
      end
    end
  end

  addon.debugPrint("[MBH] Total buttons integrated: " .. #integratedButtons)
end

------------------------------------------------
-- Expand Integrated Buttons
------------------------------------------------
function MBH:ExpandButtons()
  if not LibStub then return end

  local icon = LibStub("LibDBIcon-1.0", true)
  if not icon then
    addon.errorPrint("[MBH]LibDBIcon-1.0 not found. MBH will not function properly.")
    return
  end

  local anchor = icon.objects and icon.objects["MinimapButtonHub"]
  if not anchor then return end

  addon.debugPrint("[MBH] Expanding", #integratedButtons, "buttons")

  local cx = anchor:GetCenter()
  local scx = UIParent:GetCenter()
  local expansionDirection = (cx and scx and cx < scx) and 1 or -1

  local offset = 0
  for _, btn in ipairs(integratedButtons) do
    -- Skip MBH icon itself to avoid self-anchor
    if btn ~= anchor then
      offset = offset + 1
      btn:ClearAllPoints()
      btn:SetPoint("LEFT", anchor, "LEFT", offset * 32 * expansionDirection, 0)
      btn:SetParent(UIParent)

      if not btn:GetWidth() or btn:GetWidth() == 0 then
        btn:SetSize(32, 32)
      end

      btn:SetAlpha(1)
      btn:EnableMouse(true)
      btn:SetFrameStrata("HIGH")

      if btn.EnableDrawLayer then
        btn:EnableDrawLayer("OVERLAY")
        btn:EnableDrawLayer("ARTWORK")
      end

      btn:Show()
    end
  end
  self:AttachHoverToButtons()
end

------------------------------------------------
-- Collapse Integrated Buttons
------------------------------------------------
function MBH:CollapseButtons()
  local icon = LibStub("LibDBIcon-1.0", true)
  local anchor = icon and icon.objects and icon.objects["MinimapButtonHub"]

  for _, btn in ipairs(integratedButtons) do
    if btn ~= anchor then
      btn:Hide()
    end
  end
end

------------------------------------------------
-- Hover Focus Tracking & Auto-Collapse with Reset
-- This feature keeps the button group expanded when the mouse
-- is over the main button or any of the collected buttons.
-- When the mouse leaves both areas, a countdown starts to auto-collapse.
-- If the mouse re-enters during countdown, it cancels and resets.
------------------------------------------------

local hoverState = {
  main = false,    -- Whether mouse is over the main button
  buttons = false  -- Whether mouse is over the collected buttons
}

local collapseTimer = nil
local COLLAPSE_DELAY = 1.2 -- Seconds before auto-collapse

-- Cancel the collapse countdown
local function CancelCollapseCountdown()
  if collapseTimer then
    collapseTimer:Cancel()
    collapseTimer = nil
  end
end

-- Start the collapse countdown
local function StartCollapseCountdown()
  CancelCollapseCountdown()
  collapseTimer = C_Timer.NewTimer(COLLAPSE_DELAY, function()
    addon.MBH:CollapseButtons()
    addon.MBH:AttachHoverToMainButton()
    addon.MBH.isExpanded = false
    collapseTimer = nil
  end)
end

-- Check whether to start or cancel the countdown based on hover state
local function UpdateCollapseCheck()
  if not hoverState.main and not hoverState.buttons then
    StartCollapseCountdown()
  else
    CancelCollapseCountdown()
  end
end


------------------------------------------------
-- Attach hover detection to the main minimap button
------------------------------------------------
function MBH:AttachHoverToMainButton()
  local icon = LibStub("LibDBIcon-1.0", true)
  local mainButton = icon and icon.objects and icon.objects["MinimapButtonHub"]
  if not mainButton then return end

  mainButton:HookScript("OnEnter", function()
    hoverState.main = true
    CancelCollapseCountdown()
  end)
  mainButton:HookScript("OnLeave", function()
    hoverState.main = false
    UpdateCollapseCheck()
  end)
end

------------------------------------------------
-- Attach hover detection to all integrated buttons
------------------------------------------------
function MBH:AttachHoverToButtons()
  for _, btn in ipairs(integratedButtons) do
    if btn then
      btn:HookScript("OnEnter", function()
        hoverState.buttons = true
        CancelCollapseCountdown()
      end)
      btn:HookScript("OnLeave", function()
        hoverState.buttons = false
        UpdateCollapseCheck()
      end)
    end
  end
end

------------------------------------------------
-- Register the PLAYER_LOGIN event to initialize the addon after the player logs in
------------------------------------------------
MBH:RegisterEvent("PLAYER_LOGIN")
MBH:SetScript("OnEvent", function(_, event)
  if event == "PLAYER_LOGIN" then
    addon.debugPrint("[MBH] Initializing MinimapButtonHub")
    MinimapButtonHubDB = MinimapButtonHubDB or {}
    MinimapButtonHubDB.minimap = MinimapButtonHubDB.minimap or {}

    local LDBIcon = LibStub("LibDBIcon-1.0")
    LDBIcon:Register("MinimapButtonHub", LDB, MinimapButtonHubDB.minimap)
    addon.MBH.mainButton = LDBIcon.objects["MinimapButtonHub"]
    addon.MBH.isExpanded = false

    addon.MBH:CollectButtons()
    addon.MBH:ExpandButtons()
    addon.MBH:CollapseButtons()
    addon.MBH:AttachHoverToMainButton()
  end
end)