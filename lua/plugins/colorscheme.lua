return {
	{
		"sainnhe/sonokai",
	},

	{
		"cpea2506/one_monokai.nvim",
	},

	{
		"ray-x/aurora",
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
	},

	{
		"askfiy/visual_studio_code",
	},

	{
		"olimorris/onedarkpro.nvim",
	},

	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- your optional config goes here, see below.
		end,
	},

	{
		"ficcdaf/ashen.nvim",
		lazy = false,
		priority = 1000,
		-- configuration is optional!
		opts = {
			-- your settings here
		},
	},

	{
		"comfysage/evergarden",
		priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
		opts = {
			transparent_background = true,
			variant = "medium", -- 'hard'|'medium'|'soft'
			overrides = {}, -- add custom overrides
		},
	},

	{
		"rebelot/kanagawa.nvim",
	},

	{
		"catppuccin/nvim",
		ame = "catppuccin",
		priority = 1000,
	},

	{
		"marko-cerovac/material.nvim",
	},

	{
		"ellisonleao/gruvbox.nvim",
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa-dragon",
		},
	},
}
