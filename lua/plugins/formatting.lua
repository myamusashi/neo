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
