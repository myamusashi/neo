return {
	-- lspconfig
	{
		"neovim/nvim-lspconfig",
		event = "LazyFile",
		dependencies = {
			"mason.nvim",
			{ "williamboman/mason-lspconfig.nvim", config = function() end },
		},
		opts =  {
            inlay_hint = { enabled = false }
        }
    }
}
