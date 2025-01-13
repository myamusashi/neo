return {
    "folke/which-key.nvim",
    opts_extend = { "spec" },
    opts = {
        preset = "classic",
        win = {
            padding = { 1, 10 },
            no_overlap = true,
            title = true,
            title_pos = "center",
            zindex = 1000,
        },
        layout = {
            width = { min = 20 },
            spacing = 3,
        },
    },
}
