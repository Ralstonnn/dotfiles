-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/ for workspace rules

-- unscale XWayland
hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

-- Example window rules
-- hl.window_rule({
--     name  = "float-kitty",
--     match = { class = "^kitty$" },
--     float = true,
-- })
