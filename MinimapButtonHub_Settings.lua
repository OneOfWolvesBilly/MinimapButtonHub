-- Refactored MinimapButtonHub_Settings.lua for WoW 11+

local addonName, addon = ...
local MBH = addon.MBH
local L_S = addon.L.Settings

-- Create modern settings panel using new API
function addon.CreateSettingsPanel()
  local panel = CreateFrame("Frame", nil, UIParent)
  panel.name = addonName

  local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
  title:SetPoint("TOPLEFT", 16, -16)
  title:SetText("MinimapButtonHub")

  local resetButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
  resetButton:SetSize(160, 24)
  resetButton:SetText(L_S["SETTINGS_RESET_POSITION"] or "Reset Position")
  resetButton:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -16)
  resetButton:SetScript("OnClick", function()
    addon.ResetPosition()

  -- Show confirmation popup
  if not StaticPopupDialogs["MBH_RESET_CONFIRM"] then
    StaticPopupDialogs["MBH_RESET_CONFIRM"] = {
      text = L_S["SETTINGS_RESET_CONFIRM"] or "Main button has been reset to the bottom-left position.",
      button1 = "OK",
      timeout = 0,
      whileDead = true,
      hideOnEscape = true,
    }
  end
  StaticPopup_Show("MBH_RESET_CONFIRM")
  end)

  -- ✅ Register using new system (WoW 10.0+)
  if Settings and Settings.RegisterAddOnCategory then
    local category = Settings.RegisterCanvasLayoutCategory(panel, addonName)
    Settings.RegisterAddOnCategory(category)
  end
end

-- Reset minimap icon position using LibDBIcon
function addon.ResetPosition()
  MinimapButtonHubDB.minimap = MinimapButtonHubDB.minimap or {}
  MinimapButtonHubDB.minimap.minimapPos = 225 -- Default angle (bottom-left)

  local icon = LibStub("LibDBIcon-1.0")
  if icon and icon:IsRegistered("MinimapButtonHub") then
    icon:Refresh("MinimapButtonHub", MinimapButtonHubDB.minimap)
  end

  addon.debugPrint(L_S["SETTINGS_RESET_CONFIRM"] or "Main button has been reset to the bottom-left position.")
end

-- Open settings panel
function MBH:OpenSettings()
  if Settings and Settings.OpenToCategory then
    Settings.OpenToCategory(addonName)
  else
    addon.errorPrint("⚠️ Cannot open settings panel. Settings API not available.")
  end
end

-- Initialize settings panel
local function RegisterSettings()
  addon.CreateSettingsPanel()
end

RegisterSettings()
