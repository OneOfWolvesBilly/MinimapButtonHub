if GetLocale() ~= "koKR" then return end
local _, addon = ...
addon.L = addon.L or {}
addon.L.Main = addon.L.Main or {}
addon.L.Settings = addon.L.Settings or {}
addon.L.Shared = addon.L.Shared or {}

local M = addon.L.Main
local S = addon.L.Settings
local G = addon.L.Shared

-- Main localization
M["MAIN_TIP1_KEY"] = "왼쪽 클릭"
M["MAIN_TIP1_VALUE"] = "버튼 표시 / 숨기기"
M["MAIN_TIP2_KEY"] = "오른쪽 클릭"
M["MAIN_TIP2_VALUE"] = "설정 열기"

-- Settings localization
S["SETTINGS_RESET_POSITION"] = "위치 초기화"
S["SETTINGS_RESET_CONFIRM"] = "주 버튼이 왼쪽 아래로 초기화되었습니다."