-- You can put your preferred keybinds here
-- https://wiki.hypr.land/Configuring/Basics/Binds/

-- Default new i2c Lua hyprland customs
hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )

-- Bind Super + Backspace to killactive
hl.bind("SUPER + BackSpace",  hl.dsp.window.close())

-- Unbind Super + Return (hidden) and bind it to Ghostty terminal
hl.unbind("SUPER + Return")
hl.bind("SUPER + Return",     hl.dsp.exec_cmd("ghostty"))

-- Bind Super + Alt + Return to launch Alacritty (fish).
hl.bind("SUPER + ALT + Return", hl.dsp.exec_cmd("alacritty"))

-- Bind Super + Alt + T to open Kitty terminal
hl.bind("SUPER + ALT + T",    hl.dsp.exec_cmd("kitty"))  -- Launch kitty (terminal)

-- Fix bind Super + Shift + Z to open Zed editor
hl.bind("SUPER + SHIFT + Z",  hl.dsp.exec_cmd("zeditor"))

-- Add bind Super + R for Rider editor
hl.bind("SUPER + R",          hl.dsp.exec_cmd("rider"))

-- Bind Chromium browser to Super + R
hl.unbind("SUPER + W")
hl.bind("SUPER + W",          hl.dsp.exec_cmd("librewolf"))
hl.bind("SUPER + ALT + W",    hl.dsp.exec_cmd("chromium"))
hl.bind("SUPER + SHIFT + B",  hl.dsp.exec_cmd("brave"))

-- Add bind Super + Z to open Zen browser
hl.bind("SUPER + Z",          hl.dsp.exec_cmd("zen-browser"))

-- Hyprexpo: toggle workspace overview (plugin dispatcher)
-- hl.bind("SUPER + SHIFT + W", function() 
--     hl.plugin.hyprexpo.expo("toggle")
-- end)

-- GloView Hyprland pluginWWW
hl.unbind("SUPER + TAB")
hl.bind("SUPER + TAB", hl.plugin.gloview.toggle)
hl.bind("SUPER + SHIFT + TAB", hl.plugin.gloview.desktop)
hl.bind("SUPER + CTRL + TAB", hl.plugin.gloview.allworkspaces) -- Not working?

-- Bind Super + Space for launcher
hl.bind("SUPER + Space",      hl.dsp.exec_cmd("pkill fuzzel || fuzzel"))  -- Best launcher: fuzzel

-- ------------
-- * Logitech [Model] keyboard specific.
-- Bind special keys from Logitech+Microsoft retro keyboard.
-- With Windows XP-7 applications keys and ugly aero design.

-- Left zoom and launcher/overview special keys.
-- hl.bind("XF86ZoomIn",     hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor * 1.25}')\""))
-- hl.bind("XF86ZoomOut",    hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor / 1.25}')\""))
-- hl.bind("XF86AppSelect",  hl.dsp.exec_raw("hyprexpo:expo toggle"))

-- Top multimedia and settings launch keys.
-- hl.bind("XF86Images",     hl.dsp.exec_cmd("koko"))
-- hl.bind("XF86Tools",      hl.dsp.exec_cmd("cider"))  -- Key shows Music and Windows Media Center
-- hl.bind("XF86Calculator", hl.dsp.exec_cmd("kcalc"))

-- (Fn) internet and office blue keys (Microsoft)
-- hl.bind("XF86Word",       hl.dsp.exec_cmd("libreoffice --writer"))
-- hl.bind("XF86Excel",      hl.dsp.exec_cmd("libreoffice --calc"))
-- hl.bind("XF86Calendar",   hl.dsp.exec_cmd("logseq"))
-- hl.bind("XF86HomePage",   hl.dsp.exec_cmd("midori"))
-- hl.bind("XF86Messenger",  hl.dsp.exec_cmd("vesktop"))
-- hl.bind("XF86Mail",       hl.dsp.exec_cmd("thunderbird"))
-- hl.bind("XF86Search",     hl.dsp.exec_cmd("firefox"))
-- hl.bind("XF86Eject",      hl.dsp.exec_cmd("spotify"))
--
