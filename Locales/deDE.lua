if GetLocale() ~= "deDE" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "Linksklick"
M["MAIN_TIP1_VALUE"] = "Schaltflächen ein-/ausblenden"
M["MAIN_TIP2_KEY"] = "Rechtsklick"
M["MAIN_TIP2_VALUE"] = "Einstellungen öffnen"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Position zurücksetzen"
S["SETTINGS_RESET_CONFIRM"] = "Die Hauptschaltfläche wurde unten links zurückgesetzt."