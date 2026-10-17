-- You can make apps auto-start here
-- Relevant Hyprland wiki section: https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    -- Bluetooth
    -- hl.exec_cmd("sleep 3 && bluetoothctl trust F8:DF:15:E2:A8:F4 && bluetoothctl power on && bluetoothctl connect F8:DF:15:E2:A8:F4")
    -- hl.exec_cmd("sleep 5 && bluetoothctl trust AC:80:0A:CF:F0:94 && bluetoothctl power on && bluetoothctl connect AC:80:0A:CF:F0:94")

    -- Hyprexpo explicit
    hl.exec_cmd("sleep 1 && hyprpm reload -n")
    
    -- fcitx5 (pinyin)
    hl.exec_cmd("sleep 3 && fcitx5")

    -- Cider
    hl.exec_cmd("sleep 4 && cider", { workspace = "12" })

    -- Kitty
    hl.exec_cmd("sleep 3 && kitty", { workspace = "1" })

    -- Heroic Games
    hl.exec_cmd("sleep 5 && heroic", { workspace = "12" })

    -- Hyprshade
    hl.exec_cmd("sleep 2 && hyprshade on vibrance")

    -- Hyprwinwrap
    hl.exec_cmd("sleep 2 && kitty --class=window-bg -o background_opacity=0.0 /bin/cava")

    -- Logseq
    hl.exec_cmd("sleep 6 && logseq", { workspace = "11" })

    -- Steam
    hl.exec_cmd("sleep 4 && steam -silent", { workspace = "s" })

    -- Thunderbird
    hl.exec_cmd("sleep 4 && thunderbird", { workspace = "2" })

    -- Vesktop
    hl.exec_cmd("sleep 6 && vesktop", { workspace = "1" })
end)

