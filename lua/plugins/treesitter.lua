return {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
        opts.ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "cpp",
            "typescript",
            "markdown_inline",
            "javascript",
            "python",
            "go",
            "html",
            "css",
            "scss",
            "latex",
            "bash",
            "fish",
        }
        opts.sync_install = false
        opts.auto_install = true
        require("nvim-treesitter.configs").setup(opts)
    end,
}
