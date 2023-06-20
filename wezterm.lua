local wezterm = require("wezterm")
local mux = wezterm.mux

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- COLOR_SCHEME --
config.color_scheme = "Catppuccin Mocha"

-- FONT --
config.font = wezterm.font_with_fallback({
	"MonoLisa Nerd Font Mono",
	"Maple Mono NF",
	"FiraCode Nerd Font Mono",
})
config.font_size = 18.0
config.line_height = 1.8

-- WIINDOW --
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9

-- STATRUP --
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
