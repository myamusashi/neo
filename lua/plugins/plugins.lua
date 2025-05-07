return {
    {
        "karb94/neoscroll.nvim",
        config = function()
            require("neoscroll").setup({})
        end,
    },

    {
        "ellisonleao/gruvbox.nvim",
    },

    {
        "cpea2506/one_monokai.nvim",
    },

    {
        "ray-x/aurora",
    },

    {
        "stevearc/dressing.nvim",
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
    },

    {
        "ziontee113/icon-picker.nvim",
        config = function()
            require("icon-picker").setup({
                disable_legacy_commands = true,
            })
        end,
    },

    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end,
    },

    {
        "askfiy/visual_studio_code",
        priority = 100,
    },

    {
        "barrett-ruth/live-server.nvim",
        build = "pnpm add -g live-server",
        cmd = { "LiveServerStart", "LiveServerStop" },
        config = true,
    },

    {
        "catppuccin/nvim",
        ame = "catppuccin",
        priority = 1000,
    },

    {
        "edluffy/hologram.nvim",
    },

    {
        "mg979/vim-visual-multi",
    },

    {
        "folke/twilight.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },

    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },

    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
    },

    {
        "ryanoasis/vim-devicons",
    },

    {
        "kevinhwang91/nvim-ufo",
    },

    {
        "rmagatti/goto-preview",
    },

    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup()
        end,
    },

    {
        "karb94/neoscroll.nvim",
    },

    {
        "smoka7/multicursors.nvim",
        event = "VeryLazy",
        dependencies = {
            "myamusashi/hydra.nvim",
        },
        opts = {},
        cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
        keys = {
            {
                mode = { "v", "n" },
                "<Leader>m",
                "<cmd>MCstart<cr>",
                desc = "Create a selection for selected text or word under the cursor",
            },
        },
    },

    {
        "archibate/lualine-time",
    },

    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").load_extension("file_browser")
        end,
    },

    {
        "leon-richardt/comment-highlights.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {},
        cmd = "CHToggle",
        keys = {
            {
                "<leader>h",
                function()
                    require("comment-highlights").toggle()
                end,
                desc = "Toggle comment highlighting",
            },
        },
    },

    {
        "Philipp-M/tree-sitter-yuck",
    },

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 5000,
            top_down = false,
        },
    },

    {
        "nvimtools/none-ls.nvim",
        optional = true,
        opts = function(_, opts)
            local nls = require("null-ls")
            opts.sources = opts.sources or {}
        end,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
    },

    {
        "MunifTanjim/nui.nvim",
    },

    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end,
    },

    {
        "mistricky/codesnap.nvim",
        build = "make",
        init = function()
            require("codesnap").setup({
                bg_padding = 0,
            })
        end,
    },

    {
        "olimorris/onedarkpro.nvim",
    },

    {
        "chipsenkbeil/distant.nvim",
        branch = "v0.3",
        config = function()
            require("distant"):setup()
        end,
    },

    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        -- optionally, override the default options:
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
        },
    },

    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        keys = {
            -- 👇 in this section, choose your own keymappings!
            {
                "<leader>-",
                "<cmd>Yazi<cr>",
                desc = "Open yazi at the current file",
            },
            {
                -- Open in the current working directory
                "<leader>cw",
                "<cmd>Yazi cwd<cr>",
                desc = "Open the file manager in nvim's working directory",
            },
            {
                -- NOTE: this requires a version of yazi that includes
                -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
                "<c-up>",
                "<cmd>Yazi toggle<cr>",
                desc = "Resume the last yazi session",
            },
        },
        ---@type YaziConfig
        opts = {
            -- if you want to open yazi instead of netrw, see below for more info
            open_for_directories = false,
            keymaps = {
                show_help = "<f1>",
            },
        },
    },

    {
        "ibhagwan/fzf-lua",
    },

    {
        "marko-cerovac/material.nvim",
    },

    {
        "uloco/bluloco.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            -- your optional config goes here, see below.
        end,
    },

    {
        "ficcdaf/ashen.nvim",
        lazy = false,
        priority = 1000,
        -- configuration is optional!
        opts = {
            -- your settings here
        },
    },

    {
        "comfysage/evergarden",
        priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
        opts = {
            transparent_background = true,
            variant = "medium", -- 'hard'|'medium'|'soft'
            overrides = {}, -- add custom overrides
        },
    },

    {
        "rebelot/kanagawa.nvim",
    },

    {
        "soulis-1256/eagle.nvim",
    },

    {
        "voldikss/vim-floaterm",
    },

    {
        "nvimdev/dashboard-nvim",
    },

    {
        "ahmedkhalf/project.nvim",
    },

    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
				direction = "float";
			})
        end,
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    {
        "booperlv/nvim-gomove",
    },

    {
        "figsoda/nix-develop.nvim",
    },

    {
        "ldelossa/calltree.nvim",
    },

    {
        "lukas-reineke/indent-blankline.nvim",
    },

    {
        "hzchirs/vim-material",
        config = function()
            vim.g.material = "oceanic"
        end,
    },

    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },

    {
        "DaikyXendo/nvim-material-icon",
    },

    {
        "Zeioth/compiler.nvim",
        cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
        dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
        opts = {},
    },

    {
        "stevearc/overseer.nvim",
        commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
        cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    },
}
