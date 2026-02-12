local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"JetBrains Mono NL",
		"DankMono Nerd Font",
		"PingFang SC",
		"LXGW WenKai",
		"Maple Mono NF",
		"FiraCode Nerd Font Mono",
	}),
	font_size = 17.0,
}
