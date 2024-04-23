local wezterm = require("wezterm")
local mux = wezterm.mux

-- toggle opacity
wezterm.on("toggle-opacity", function(window)
	local overrides = window:get_config_overrides() or {}
	if not overrides.window_background_opacity then
		overrides.window_background_opacity = 1
	else
		overrides.window_background_opacity = nil
	end
	window:set_config_overrides(overrides)
end)

-- maximize window when starting up
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return {
	window_decorations = "RESIZE",
	window_background_opacity = 0.9,
	macos_window_background_blur = 20,
	tab_bar_at_bottom = true,
}
