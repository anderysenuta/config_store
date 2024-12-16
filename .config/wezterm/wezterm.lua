local wezterm = require 'wezterm'
local act = wezterm.action
local mux = wezterm.mux
local config = {}

config.color_scheme = 'Catppuccin Frappe'

config.font_size = 13
config.font = wezterm.font_with_fallback {
    { family = 'JetBrains Mono', weight = 'Bold' },
    { family = "Iosevka",        weight = "ExtraLight" },
}

config.keys = {
    { key = 'd',          mods = 'CMD',        action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'd',          mods = 'CMD|SHIFT',  action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = 'w',          mods = 'CMD',        action = act.CloseCurrentPane { confirm = true } },

    { key = 'LeftArrow',  mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Left' },
    { key = 'RightArrow', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Right' },
    { key = 'UpArrow',    mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Up' },
    { key = 'DownArrow',  mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Down' },
}

config.window_background_opacity = 1
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
    left = 3,
    right = 3,
    top = 0,
    bottom = 0,
}
config.native_macos_fullscreen_mode = true
config.enable_tab_bar = false

config.default_cursor_style = "SteadyBar"

config.initial_rows = 40
config.initial_cols = 150


-- open fullscreen
wezterm.on("gui-startup", function()
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():toggle_fullscreen()
end)


return config
