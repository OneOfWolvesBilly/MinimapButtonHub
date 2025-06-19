if GetLocale() ~= "itIT" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Reimposta posizione"
S["SETTINGS_RESET_CONFIRM"] = "Il pulsante principale è stato reimpostato in basso a sinistra."