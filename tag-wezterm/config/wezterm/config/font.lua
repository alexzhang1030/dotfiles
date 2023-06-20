local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"MonoLisa Nerd Font Mono",
		"Maple Mono NF",
		"FiraCode Nerd Font Mono",
	}),
	font_size = 18.0,
}
