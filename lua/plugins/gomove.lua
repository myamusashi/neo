return {
	"booperlv/nvim-gomove",
	config = function()
		require("gomove").setup({
			map_defaults = true,
			reindent = true,
			undojoin = true,
			move_pas_end_col = false,
		})
	end,
}
