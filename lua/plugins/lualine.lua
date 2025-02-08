local formatters = {
    -- Programming Languages
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
    nix = "󰉻 nixfmt",
    -- Tambahkan formatter lain sesuai kebutuhan
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
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "" },
                lualine_x = {
                    "searchcount",
                    "filetype",
                    function()
                        local filetype = vim.bo.filetype
                        return formatters[filetype] or ""
                    end,
                    "progress",
                },
                lualine_y = { "location" },
                lualine_z = { "filename" },
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
                lualine_a = {},
                lualine_b = { "branch" },
                lualine_c = { "filename" },
                lualine_x = { "searchcount" },
                lualine_y = {},
                lualine_z = {},
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
