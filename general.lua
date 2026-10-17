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

    plugin = {
		borders_plus_plus = {
            add_borders = 3, -- 0 - 9
            natural_rounding = true,
            col = {
                border_1 = "rgb(187, 226, 242)",
                border_2 = "rgb(50, 56, 166)",
                border_3 = "rgb(184, 128, 191)",
            },
            border_size_1 = 1,
            border_size_2 = 1,
            border_size_3 = 2,
		},
        -- hyprexpo = {
        --     columns = 2,
        --     rows = 0, -- Follow columns for a square grid.
	    --     gaps_in = 5,
        --     gaps_out = 0,
        --     bg_col = "rgb(37, 44, 64)",
        --     workspace_method = "center current",
        -- },
    },
})

-- Monitors
hl.monitor({ output = "DP-4", mode = "2560x1440", position = "0x0",    scale = 1 })
hl.monitor({ output = "DP-2", mode = "1920x1080", position = "2560x0", scale = 1, transform = 1 })

-- Bind workspaces 1-10 (group 1) to primary monitor
for i = 1, 10 do
    hl.workspace_rule({ workspace = tostring(i), monitor = "DP-4", default = true })
end

-- Bind workspaces 11-20 (group 2) to secondary monitor
for i = 11, 20 do
    hl.workspace_rule({ workspace = tostring(i), monitor = "DP-2", default = true })
end

-- ** PLUGINS
-- * hyprwinwrap
-- example: foot --app-id=window-bg -o colors.alpha=0.0 [path-to-script]
-- example: kitty --class=window-bg -o background_opacity=0.0 [path-to-script]
-- example: xterm -class window-bg [path-to-script]
-- any program will work, use `hyprctl clients` to discover your window's class/title

-- class is an EXACT match and NOT a regex! Use `hyprctl clients` to find it.
-- You may match on `class` and/or `title`. pos_*/size_* are percentages.
if hl.plugin.hyprwinwrap ~= nil then
    hl.plugin.hyprwinwrap.window({
        class = "window-bg",
        title = "window-bg",
        layer = 1,
        pos_x = 0,
        pos_y = 0,
        size_x = 100,
        size_y = 100
    })
    -- Second bg window sitting in the centre on top of the first,
    -- useful for showing a visualizer only on a portion of the screen.
    -- hl.plugin.hyprwinwrap.window({
    --     class = "window-bg2",
    --     title = "window-bg2",
    --     layer = 1,
    --     pos_x = 25,
    --     pos_y = 25,
    --     size_x = 50,
    --     size_y = 50
    -- })
end
