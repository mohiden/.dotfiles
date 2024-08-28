-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- config.font = wezterm.font("FiraCode Nerd Font jjMono")
config.font_size = 17

config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.freetype_load_flags = "NO_HINTING"

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.freetype_load_flags = "NO_HINTING"
config.color_scheme = 'Jellybeans'
-- config.window_background_opacity = 0.1
-- config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
