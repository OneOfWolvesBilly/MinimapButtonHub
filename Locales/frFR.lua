if GetLocale() ~= "frFR" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "Clic gauche"
M["MAIN_TIP1_VALUE"] = "Afficher / Masquer les boutons"
M["MAIN_TIP2_KEY"] = "Clic droit"
M["MAIN_TIP2_VALUE"] = "Ouvrir les paramètres"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Réinitialiser la position"
S["SETTINGS_RESET_CONFIRM"] = "Le bouton principal a été réinitialisé en bas à gauche."