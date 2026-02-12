local wezterm = require("wezterm")
local mux = wezterm.mux

-- maximize window when starting up
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return {
	window_decorations = "RESIZE",
	tab_bar_at_bottom = true,
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
}
