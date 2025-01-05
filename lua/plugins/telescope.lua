local builtins = require "telescope.builtin"

-- defaults could be a theme as well
local defaults = { previewer = false, disable_devicons = true }

local pickers = setmetatable({}, {
  __index = function(_, key)
    if builtins[key] == nil then
      error "Invalid key, please check :h telescope.builtin"
      return
    end
    return function(opts)
      opts = vim.tbl_extend("keep", opts or {}, defaults)
      builtins[key](opts)
    end
  end,
})

return {
	"nvim-telescope/telescope.nvim",
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					vertical = { width = 0.5, height = 0.5 },
				},
			},
			pickers = {
				find_files = {
					theme = "dropdown",
				},
			},
		})
	end,
}
