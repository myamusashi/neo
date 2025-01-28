local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
    "nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        config = function() end,
    },

    opts = function()
        local function create_no_virtual_text_handler()
            return vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
                virtual_text = false,
                signs = true,
                underline = true,
                update_in_insert = false,
            })
        end

        local diagnostic_handler = create_no_virtual_text_handler()

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
                    ["textDocument/publishDiagnostics"] = diagnostic_handler,
                },
            }),

            require("lspconfig").lua_ls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").cmake.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").cssls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").bashls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").dockerls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").fish_lsp.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").nil_ls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").gopls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").html.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").mesonlsp.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").marksman.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
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
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),

            require("lspconfig").sqls.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = diagnostic_handler },
            }),
        }
    end,
}
