local wezterm = require("wezterm")
local utils = require("utils")

local config = {}
local user_config = require("config.index")
local keymaps = require("keymaps")
local ssh_domains = require("ssh_domains")

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = utils.merge_tables(config, {
	user_config,
	{
		keys = keymaps,
		ssh_domains = ssh_domains,
	},
})

return config
