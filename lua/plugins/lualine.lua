local formatters = {
    c = "󰉻 clang-format",
    cpp = "󰉻 clang-format",
    lua = "󰉻 stylua",
    python = "󰉻 black",
    javascript = "󰉻 prettier",
    typescript = "󰉻 prettier",
    javascriptreact = "󰉻 prettier",
    typescriptreact = "󰉻 prettier",
    json = "󰉻 prettier",
    html = "󰉻 prettier",
    css = "󰉻 prettier",
    scss = "󰉻 prettier",
    rust = "󰉻 rustfmt",
    go = "󰉻 gofmt",
    php = "󰉻 php-cs-fixer",
    java = "󰉻 google-java-format",
    ruby = "󰉻 rubocop",
    markdown = "󰉻 prettier",
    nix = "󰉻 alejandra",
}

return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "onedark_dark",
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = {
                    {
                        "diagnostics",
                        sources = { "nvim_lsp", "nvim_diagnostic" },
                    },
                },
                lualine_x = {
                    "searchcount",
                    "filetype",
                    function()
                        local filetype = vim.bo.filetype
                        return formatters[filetype] or ""
                    end,
                },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {
                lualine_a = { "windows" },
                lualine_b = { "selectioncount" },
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "os.date('%r')", "data", "require'lsp-status'.status()" },
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
