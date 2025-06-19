if GetLocale() ~= "zhCN" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "左键点击"
M["MAIN_TIP1_VALUE"] = "显示 / 隐藏按钮"
M["MAIN_TIP2_KEY"] = "右键点击"
M["MAIN_TIP2_VALUE"] = "打开设置"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "按钮位置重置"
S["SETTINGS_RESET_CONFIRM"] = "主按钮已重置到左下角"