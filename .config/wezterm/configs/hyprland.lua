local config = {}

local currectDesktopEnv = os.getenv("XDG_CURRENT_DESKTOP")
local currectDesktop = currectDesktopEnv and string.lower(currectDesktopEnv) or ""

if currectDesktop ~= "hyprland" then
	return config
end

config.window_background_opacity = 0.80
config.enable_wayland = false

return config
