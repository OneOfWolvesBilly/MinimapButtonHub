if GetLocale() ~= "ptBR" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "Clique esquerdo"
M["MAIN_TIP1_VALUE"] = "Mostrar / Ocultar botões"
M["MAIN_TIP2_KEY"] = "Clique direito"
M["MAIN_TIP2_VALUE"] = "Abrir configurações"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Redefinir posição"
S["SETTINGS_RESET_CONFIRM"] = "O botão principal foi redefinido para a parte inferior esquerda."