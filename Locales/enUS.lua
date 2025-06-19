if GetLocale() ~= "enUS" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "Left-click"
M["MAIN_TIP1_VALUE"] = "Show / Hide buttons"
M["MAIN_TIP2_KEY"] = "Right-click"
M["MAIN_TIP2_VALUE"] = "Open settings"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Reset Position"
S["SETTINGS_RESET_CONFIRM"] = "Main button position has been reset."

-- Shared/common messages
G["CHANGES_SAVED"] = "Changes saved."
