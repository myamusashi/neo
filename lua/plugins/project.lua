return {
    "ahmedkhalf/project.nvim",
    _VERSION = false,
    opts = { manual_mode = false },
    event = "VeryLazy",
    config = function(_, opts)
        opts.detection_methods = { "lsp", "pattern" }
        opts.pattern = {
            ".git",
            "_darcs",
            ".hg",
            ".bzr",
            ".svn",
            "flake.nix",
            "Makefile",
            "meson.build",
            "CMakeLists.txt",
            "package.json",
        }
        opts.datapath = vim.fn.stdpath("data")
        opts.silent_chdir = false
        opts.show_hidden = false
        opts.exclude_dirs = {}
        opts.ignore_lsp = { "clangd" }
        require("project_nvim").setup(opts)
        require("lazyvim.util").on_load("telescope.nvim", function()
            require("telescope").load_extension("projects")
        end)
    end,
}
