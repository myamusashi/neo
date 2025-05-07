return {
    "Zeioth/compiler.nvim",
    dependencies = {
        {
            "stevearc/overseer.nvim",
        },
    },
    cmd = { "CompilerOpen", "CompilerToggleResults" },
    opts = {},
    keys = {
        { "mc", "<cmd>CompilerOpen<cr>", desc = "CompilerOpen" },
        { "mt", "<cmd>CompilerToggleResults<cr>", desc = "CompilerToggleResults" },
    },
}
