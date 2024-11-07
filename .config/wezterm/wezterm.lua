local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("HackNerdFont")

config.color_scheme = "Catppuccin Mocha"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
-- config.window_background_opacity = 0.80

config.enable_tab_bar = false

return config
