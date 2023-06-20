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
config.line_height = 1.45

-- WIINDOW --
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
-- WINDOW_TOGGLE_OPACITY --
wezterm.on("toggle-opacity", function(window)
	local overrides = window:get_config_overrides() or {}
	if not overrides.window_background_opacity then
		overrides.window_background_opacity = 1
	else
		overrides.window_background_opacity = nil
	end
	window:set_config_overrides(overrides)
end)

-- SHORTCUT_KEYS --
config.keys = {
	{ key = "o", mods = "CTRL", action = wezterm.action.EmitEvent("toggle-opacity") },
}

-- STATRUP --
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
