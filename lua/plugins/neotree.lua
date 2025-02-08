return {
    "nvim-neo-tree/neo-tree.nvim",
    dependecies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
    config = function()
        require("neo-tree").setup({
            
        })
    end,
}
