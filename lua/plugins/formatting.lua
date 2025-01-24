-- ~/.config/nvim/lua/plugins/conform.lua
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
            nix = { "nixpkgs_fmt" },
            
            rust = { "rustfmt" }
        },

        -- Konfigurasi khusus untuk formatter
        formatters = {
            clang_format = {
                prepend_args = {
                    "--style=file",
                },
            },
        },
    },
}
