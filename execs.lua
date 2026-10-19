-- You can make apps auto-start here
-- Relevant Hyprland wiki section: https://wiki.hypr.land/Configuring/Basics/Autostart/

local SECOND = "DP-2" -- check with `hyprctl monitors all`

hl.on("hyprland.start", function()
    -- Bluetooth
    -- hl.exec_cmd("sleep 3 && bluetoothctl trust F8:DF:15:E2:A8:F4 && bluetoothctl power on && bluetoothctl connect F8:DF:15:E2:A8:F4")
    -- hl.exec_cmd("sleep 5 && bluetoothctl trust AC:80:0A:CF:F0:94 && bluetoothctl power on && bluetoothctl connect AC:80:0A:CF:F0:94")
    
    -- Programs on workspaces at startup
    local has_second = hl.get_monitor(SECOND) ~= nil

    -- Pick workspaces depending on the setup
    local ws = {
        cider       = has_second and "12" or "3",
        heroic      = has_second and "12" or "3",
        kitty       = has_second and "1"  or "1",
        logseq      = has_second and "11" or "1",
        steam       = has_second and "s"  or "s",
        thunderbird = has_second and "2"  or "2",
        vesktop     = has_second and "1"  or "1",
    }

    -- Hyprexpo explicit
    hl.exec_cmd("sleep 1 && hyprpm reload -n")
    
    -- fcitx5 (pinyin)
    hl.exec_cmd("sleep 3 && fcitx5")

    -- Cider
    hl.exec_cmd("sleep 4 && cider", { workspace = ws.cider })

    -- Kitty
    hl.exec_cmd("sleep 3 && kitty", { workspace = ws.kitty })

    -- Heroic Games
    hl.exec_cmd("sleep 5 && heroic", { workspace = ws.heroic })

    -- Hyprshade
    hl.exec_cmd("sleep 2 && hyprshade on vibrance")

    -- Hyprwinwrap
    hl.exec_cmd("sleep 2 && kitty --class=window-bg -o background_opacity=0.0 /bin/cava")

    -- Logseq
    hl.exec_cmd("sleep 6 && logseq", { workspace = ws.logseq })

    -- Steam
    hl.exec_cmd("sleep 4 && steam -silent", { workspace = ws.steam })

    -- Thunderbird
    hl.exec_cmd("sleep 4 && thunderbird", { workspace = ws.thunderbird })

    -- Vesktop
    hl.exec_cmd("sleep 6 && vesktop", { workspace = ws.vesktop })
end)

