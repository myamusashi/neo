return {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            fish = { "fish_indent" },
            sh = { "shfmt" },

            cpp = { "clang-format" },
            c = { "clang-format" },
            nix = { "alejandra" },
            rust = { "rustfmt" },
            java = { "google-java-format" },
            python = { "black" },
            json = { "prettier" },
        },

        formatters = {
            clang_format = {
                prepend_args = {
                    "--style=file",
                },
            },
        },
    },
}
