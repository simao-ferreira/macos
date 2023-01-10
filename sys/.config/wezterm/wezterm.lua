-- WezTerm config
-- https://wezfurlong.org/wezterm/features.html
-- https://github.com/wez/wezterm
-- v0.1

local wezterm = require("wezterm")

return {
	front_end = "OpenGL",
	font = wezterm.font("JetBrains Mono", { weight = "Medium" }),
	warn_about_missing_glyphs = true,
	font_size = 12,
	line_height = 0.9,

	-- Pretty Colors
	bold_brightens_ansi_colors = true,

	-- Padding
	window_padding = {
		left = 25,
		right = 25,
		top = 25,
		bottom = 25,
	},

	-- Tabs
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,

	-- Colorscheme
	-- color_scheme = "Harper", -- lacks reds?
	color_scheme = "Helios (base16)",
}
