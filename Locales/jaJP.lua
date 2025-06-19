if GetLocale() ~= "jaJP" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "左クリック"
M["MAIN_TIP1_VALUE"] = "ボタンを表示 / 非表示"
M["MAIN_TIP2_KEY"] = "右クリック"
M["MAIN_TIP2_VALUE"] = "設定を開く"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "位置をリセット"
S["SETTINGS_RESET_CONFIRM"] = "メインボタンは左下にリセットされました。"