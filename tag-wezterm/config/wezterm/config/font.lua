local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"DankMono Nerd Font",
		"PingFang SC",
		"LXGW WenKai",
		"Maple Mono NF",
		"FiraCode Nerd Font Mono",
	}),
	font_size = 19.0,
}
