return {
    "nvim-neo-tree/neo-tree.nvim",
    dependecies = { "nvim-lua/plenary.nvim", "DaikyXendo/nvim-material-icon", "MunifTanjim/nui.nvim" },
    config = function()
        require("neo-tree").setup({})
    end,
}
