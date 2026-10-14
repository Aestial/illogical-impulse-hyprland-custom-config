-- You can put custom rules here
-- Window/layer rules: https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- Workspace rules: https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Terminal emulators
hl.window_rule({ match = { class = "^(alacritty|foot|ghostty|kitty)$" }, opacity = "0.925 0.835 0.985" })

-- Default blur apps
-- Low transparency
hl.window_rule({ match = { class = "^(dia|Code|electron|firefox|heroic|obsidian|Rider|Spotify|zed)$" }, opacity = "0.945 0.925 1" })
-- Normal transparency
-- hl.window_rule({ match = { class = "^(Cider|fr\\.handbrake\\.ghb|psst-gui|vesktop)$" }, opacity = { active = 0.915, inactive = 0.865, fullscreen = 1 } })
-- No transparency
-- hl.window_rule({ match = { class = "^(Anydesk|blender|Godot|krita|Chromium|gimp|GB Studio|steam|Unity|davinci-resolve|vlc)$" }, opacity = { active = 1, inactive = 1, fullscreen = 1 } })

