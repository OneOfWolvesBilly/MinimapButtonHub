if GetLocale() ~= "ruRU" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "Левая кнопка"
M["MAIN_TIP1_VALUE"] = "Показать / скрыть кнопки"
M["MAIN_TIP2_KEY"] = "Правая кнопка"
M["MAIN_TIP2_VALUE"] = "Открыть настройки"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "Сбросить позицию"
S["SETTINGS_RESET_CONFIRM"] = "Основная кнопка была сброшена в нижний левый угол."