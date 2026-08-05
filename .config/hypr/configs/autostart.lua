-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	-- hl.exec_cmd("/usr/bin/hyprland-per-window-layout")

	hl.exec_cmd("nm-applet &")
	hl.exec_cmd("waybar")
	hl.exec_cmd("dunst")
	hl.exec_cmd("blueman-applet")
	hl.exec_cmd("eww daemon")
	hl.exec_cmd("udiskie")
	hl.exec_cmd("AmneziaVPN")
end)

-- NOTE: Doesn't work well with 2 monitors or need to look it up more
-- Open apps by default
-- hl.on("hyprland.start", function()
--     hl.exec_cmd("[workspace 7 silent] google-chrome-stable")
--     hl.exec_cmd("[workspace 0 silent] /opt/v2rayn-bin/v2rayN")
-- end)
