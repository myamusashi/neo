local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
    "nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        config = function() end,
    },

    opts = function()
        local clangd_handler = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false, -- Disable virtual text hanya untuk clangd
            signs = true, -- Tetap tampilkan signs
            underline = true, -- Tetap tampilkan underline
            update_in_insert = false,
        })

        setup = {
            require("lspconfig").clangd.setup({
                capabilities = capabilities,
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--header-insertion=iwyu",
                    "--completion-style=detailed",
                    "--function-arg-placeholders",
                    "--fallback-style=llvm",
                },
                handlers = {
                    ["textDocument/publishDiagnostics"] = clangd_handler,
                },
            }),

            require("lspconfig").lua_ls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").cmake.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").cssls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").bashls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").dockerls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").fish_lsp.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").nil_ls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").gopls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").html.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").mesonlsp.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").marksman.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").texlab.setup({
                settings = {
                    texlab = {
                        bibtexFormatter = "texlab",
                        build = {
                            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                            executable = "latexmk",
                            forwardSearchAfter = false,
                            onSave = false,
                        },
                        chktex = {
                            onEdit = false,
                            onOpenAndSave = false,
                        },
                        diagnosticsDelay = 300,
                        formatterLineLength = 80,
                        forwardSearch = {
                            args = {},
                        },
                        latexFormatter = "latexindent",
                        latexindent = {
                            modifyLineBreaks = false,
                        },
                    },
                },
            }),

            require("lspconfig").ts_ls.setup({
                capabilities = capabilities,
            }),

            require("lspconfig").sqls.setup({
                capabilities = capabilities,
            }),
        }
    end,
}
