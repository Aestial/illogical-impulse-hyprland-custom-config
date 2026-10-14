-- You can make apps auto-start here
-- Relevant Hyprland wiki section: https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    -- Bluetooth
    hl.exec_cmd("sleep 3 && bluetoothctl trust F8:DF:15:E2:A8:F4 && bluetoothctl power on && bluetoothctl connect F8:DF:15:E2:A8:F4")
    hl.exec_cmd("sleep 5 && bluetoothctl trust AC:80:0A:CF:F0:94 && bluetoothctl power on && bluetoothctl connect AC:80:0A:CF:F0:94")

    -- Hyprexpo explicit
    hl.exec_cmd("hyprpm reload -n")
    
    -- fcitx5 (pinyin)
    hl.exec_cmd("sleep 1 && fcitx5")

    -- Cider
    hl.exec_cmd("sleep 5 && cider", { workspace = "1" })

    -- Ghostty
    -- hl.exec_cmd("sleep 3 && ghostty", { workspace = "1" })

    -- Heroic Games
    -- hl.exec_cmd("sleep 1 && heroic", { workspace = "11" })

    -- Hyprshade
    hl.exec_cmd("hyprshade on vibrance")

    -- Logseq
    hl.exec_cmd("logseq", { workspace = "1" })

    -- Obsidian
    -- hl.exec_cmd("obsidian", { workspace = "11" })

    -- Steam
    -- hl.exec_cmd("sleep 6 && steam -silent", { workspace = "s" })

    -- Thunderbird
    hl.exec_cmd("thunderbird", { workspace = "11" })

    -- Vesktop
    hl.exec_cmd("sleep 3 && vesktop", { workspace = "1" })
end)

