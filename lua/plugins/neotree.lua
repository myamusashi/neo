return {
    "nvim-neo-tree/neo-tree.nvim",
    dependecies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                follow_current_file = true,
                use_current_file_path = true,
                hijack_netrw_behavior = "open_current",
                filtered_items = {
                    hide_dotfiles = false,
                },
            },
        })
    end,
}
