if GetLocale() ~= "zhTW" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "左鍵點擊"
M["MAIN_TIP1_VALUE"] = "顯示 / 隱藏按鈕"
M["MAIN_TIP2_KEY"] = "右鍵點擊"
M["MAIN_TIP2_VALUE"] = "開啟設定"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "重設位置"
S["SETTINGS_RESET_CONFIRM"] = "主按鈕已重設至左下角。"

-- Shared
G["CHANGES_SAVED"] = "變更已儲存。"
