-- You can put custom rules here
-- Window/layer rules: https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- Workspace rules: https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- * Opacity config
-- Low transparency
hl.window_rule({ match = { class = "^(Antigravity|Code|electron|firefox|heroic|Logseq|obsidian|Rider|Spotify|zed)$" }, opacity = "0.985 0.925 1" })

-- Normal transparency
hl.window_rule({ match = { class = "^(Cider|Deskflow|fr\\.handbrake\\.ghb|psst-gui|vesktop)$" }, opacity = "0.95 0.875 0.99" })

-- No transparency
hl.window_rule({ match = { class = "^(Anydesk|blender|Godot|krita|Chromium|gimp|GB Studio|steam|Unity|davinci-resolve|vlc)$" }, opacity = "1 1 1" })

-- Terminal emulators
hl.window_rule({ match = { class = "^(Alacritty|foot|com.mitchellh.ghostty|kitty|rio)$" }, opacity = "0.935 0.845 0.985" })

-- * PLUGINS
-- ** HyprWindowShade
-- Shaders config
-- Terminal windows dim when inactive
hl.window_rule({
    name  = "terminal-inactive-dim",
    match = { class = "^(Alacritty|foot|com.mitchellh.ghostty|kitty|rio)$" },
    tag   = "+shader_inactive:/home/jaime/.config/hypr/shaders/dim.glsl",
})

-- Terminal windows invert (light mode)
-- hl.window_rule({
--     name  = "terminal-invert",
--     match = { class = "^(Alacritty|foot|com.mitchellh.ghostty|kitty|rio)$" },
--     tag   = "+shader:/home/jaime/.config/hypr/shaders/invert.glsl",
-- })

-- Terminal chromatic abberation 
hl.window_rule({
    name  = "terminal-abberation",
    match = { class = "^(Alacritty|Cider|foot|com.mitchellh.ghostty|kitty|rio)$" },
    tag   = "+shader:/home/jaime/.config/hypr/shaders/chromatic_abberation.glsl",
})
