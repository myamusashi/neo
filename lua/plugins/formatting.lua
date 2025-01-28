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
            nix = { "nixfmt" },
            rust = { "rustfmt" }
        },

        formatters = {
            clang_format = {
                prepend_args = {
                    "--style=file",
                },
            },
            nixfmt = {
                prepend_args = {
                    "--width=160",
                },
            },
        },
    },
}
