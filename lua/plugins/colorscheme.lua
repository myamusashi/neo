return {
	{
		"marko-cerovac/material.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme material-deep-ocean")
		end,
	},

    {
        "ellisonleao/gruvbox.nvim",
        priority = 100,
        config = function ()
            vim.cmd("colorscheme gruvbox")
        end
    }
}
