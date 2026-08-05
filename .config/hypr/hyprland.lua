-- Main Hyprland Lua config
-- Each section lives in a separate file under configs/ and is required here.
-- See https://wiki.hypr.land/Configuring/Start/

require("configs/myPrograms")
require("configs/env")
require("configs/inputs")
require("configs/autostart")
require("configs/lookAndFeel")
require("configs/layouts")
require("configs/keybinds")
require("configs/windowsAndWorkspaces")

-- Include every machine-specific config from configs/local/ if it exists
-- and has files (pcall swallows the "no match" error otherwise).
pcall(require, "./configs/local/*.lua")
