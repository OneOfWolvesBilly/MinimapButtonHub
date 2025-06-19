if GetLocale() ~= "esES" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "Clic izquierdo"
M["MAIN_TIP1_VALUE"] = "Mostrar / Ocultar botones"
M["MAIN_TIP2_KEY"] = "Clic derecho"
M["MAIN_TIP2_VALUE"] = "Abrir configuración"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Restablecer posición"
S["SETTINGS_RESET_CONFIRM"] = "El botón principal se ha restablecido a la esquina inferior izquierda."