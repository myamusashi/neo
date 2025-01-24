-- ~/.config/nvim/lua/plugins/telescope.lua
return {
    "nvim-telescope/telescope.nvim",
    config = function()
        local telescope = require("telescope")
        local themes = require("telescope.themes")

        -- Setup default theme configuration
        local dropdown_theme = themes.get_dropdown({
            width = 0.5,
            height = 0.5,
            previewer = false,
            disable_devicons = true,
        })

        -- Merge dengan default configuration
        local config = vim.tbl_deep_extend("force", dropdown_theme, {
            defaults = {
                layout_config = {
                    width = 0.5,
                    height = 0.5,
                },
                borderchars = {
                    { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                    prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
                    results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
                    preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                },
                sorting_strategy = "ascending",
                layout_strategy = "center",
            },
            pickers = {
                buffers = { theme = "dropdown" },
                find_files = { theme = "dropdown" },
                git_files = { theme = "dropdown" },
                grep_string = { theme = "dropdown" },
                live_grep = { theme = "dropdown" },
                oldfiles = { theme = "dropdown" },
                current_buffer_fuzzy_find = { theme = "dropdown" },
                help_tags = { theme = "dropdown" },
                treesitter = { theme = "dropdown" },
                commands = { theme = "dropdown" },
                command_history = { theme = "dropdown" },
                vim_options = { theme = "dropdown" },
                keymaps = { theme = "dropdown" },
                [""] = { theme = "dropdown" },
            },
            extensions = {
                file_browser = { theme = "dropdown" },
                project = { theme = "dropdown" },
                fzf = { theme = "dropdown" },
                ["ui-select"] = themes.get_dropdown(),
                [""] = { theme = "dropdown" },
            },
        })

        telescope.setup(config)

        -- Load extensions jika ada
        pcall(telescope.load_extension, "fzf")
        pcall(telescope.load_extension, "file_browser")
        pcall(telescope.load_extension, "project")
        pcall(telescope.load_extension, "ui-select")
    end,
    keys = {
        -- Optional: tambahkan keymaps disini
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
}
