local font = require("config.font")
local tabbar = require("config.tabbar")
local window = require("config.window")
local utils = require("utils")

return utils.merge_tables({
	color_scheme = "Tokyo Night",
	line_height = 1.2,
	window_close_confirmation = "NeverPrompt",
}, {
	font,
	tabbar,
	window,
})
