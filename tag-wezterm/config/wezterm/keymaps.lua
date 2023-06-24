local wezterm = require("wezterm")
local act = wezterm.action

return {
	-- toggle window opacity
	{ key = "o", mods = "CTRL|ALT", action = wezterm.action.EmitEvent("toggle-opacity") },

	-- create tab
	{ key = "n", mods = "CMD", action = wezterm.action.SpawnTab("DefaultDomain") },
	-- create pane
	{ key = "n", mods = "ALT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "N", mods = "ALT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },

	-- close tab
	{ key = "x", mods = "CMD", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	-- close pane
	{ key = "x", mods = "ALT", action = wezterm.action.CloseCurrentPane({ confirm = true }) },

	-- switch tab activeate
	{ key = "j", mods = "CMD", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "k", mods = "CMD", action = wezterm.action.ActivateTabRelative(1) },
	-- switch tab activeate by number
	{ key = "1", mods = "CMD", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "CMD", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "CMD", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "CMD", action = wezterm.action.ActivateTab(3) },
	{ key = "5", mods = "CMD", action = wezterm.action.ActivateTab(4) },
	{ key = "6", mods = "CMD", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "CMD", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "CMD", action = wezterm.action.ActivateTab(7) },
	{ key = "9", mods = "CMD", action = wezterm.action.ActivateTab(-1) },
	-- switch pane
	{ key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "RightArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "UpArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "DownArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },

	-- rename tab
	{
		key = "R",
		mods = "CMD",
		action = act.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}
