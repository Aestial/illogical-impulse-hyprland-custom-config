-- Put general config stuff here
-- https://wiki.hypr.land/Configuring/Basics/Variables/

-- TODO: Check if this is not longer necessary
hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

hl.config({
    decoration = {
        rounding = 8,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        blur = {
            enabled = true,
            ignore_opacity = false,
            new_optimizations = true,
            popups = true,
            popups_ignorealpha = 0.5,
            xray = true,
            size = 5,
            passes = 1,
        },
    },

    input = {
        kb_layout = "us,us",
        kb_options = "compose:ralt",
        kb_variant = ",intl",
        numlock_by_default = true,
    },

    animations = {
        enabled = true,
    },

    debug = {
        enable_stdout_logs = false,
    },

    -- plugin = {
    --     ["borders-plus-plus"] = {
    --         add_borders = 3, -- 0 - 9
    --         ["col.border_1"] = "rgb(187, 226, 242)",
    --         ["col.border_2"] = "rgb(50, 56, 166)",
    --         ["col.border_3"] = "rgb(184, 128, 191)",
    --         border_size_1 = 1,
    --         border_size_2 = 1,
    --         border_size_3 = 2,
    --         natural_rounding = true,
    --     },
    --     hyprexpo = {
    --         columns = 2,
    --         gap_size = 4,
    --         bg_col = "rgb(37, 44, 64)",
    --         workspace_method = "center current",
    --         enable_gesture = false,
    --     },
    --     hyprtrails = {
    --         color = "rgb(111, 150, 166)",
    --     },
    --     hyprwinwrap = {
    --         class = "kitty-bg",
    --     },
    -- },
})

-- Monitors
hl.monitor({ output = "DP-1", mode = "2560x1440", position = "0x0",    scale = 1 })
-- hl.monitor({ output = "DP-3", mode = "2560x1440", position = "2560x0", scale = 1 })

-- Bind workspaces 1-10 (group 1) to primary monitor
for i = 1, 10 do
    hl.workspace_rule({ workspace = tostring(i), monitor = "DP-1", default = true })
end

-- Bind workspaces 11-20 (group 2) to secondary monitor
-- for i = 11, 20 do
--     hl.workspace_rule({ workspace = tostring(i), monitor = "DP-3", default = true })
-- end

