return {
    {
        "snacks.nvim",
        opts = {
            dashboard = {
                preset = {
                    header = [[
        MR PRESIDENT THERE IS SECOND PLANE COMINGGGGG
        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣤⣤⣤
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠐⢦⡄⠀⠀⠀⠀⠀⠀⠀⠠⡀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⢿⣤⠀⠀⠀⠀⠀⠀⠀⠂⠀⡀⠄⠀⠀⠀⠀⢸⣿⣿⣿⣿
⠀⠀⠱⡆⣀⣀⣀⣀⣰⣿⣷⣀⡀⠀⠀⠀⡄⠀⠀⢠⠃⠀⠀⠀⠀⢸⣿⣿⣿⣿
⠀⠀⢴⠋⠉⠉⠉⠉⣿⣿⠛⠈⠁⠈⠀⠀⠈⠂⠀⣴⡏⠀⠀⠀⠀⢸⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⢸⣿⠘⠀⠀⠀⠀⠀⠀⣄⣠⢴⡹⡏⠀⠀⠀⠀⢸⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠏⠀⠀⠀⠀⠀⠀⢀⣿⣿⡤⢿⡗⠀⠀⠀⠀⢸⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⡨⣡⣴⣿⣿⣷⣿⣏⢄⡐⠀⠀⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⡨⢥⡖⠱⢈⡏⣙⡉⣁⠠⠀⠀⠿⠿⠿⠿⠿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⠒⠀⠠⠂⠀⠀⠀⠀⠀⠀⠀⠀
                    ]],
                    -- stylua: ignore
                    ---@type snacks.dashboard.Item[]
                    keys = {
                      { icon = " ", key = "f", desc = "Find File", action = ":Telescope find_files" },
                      { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                      { icon = " ", key = "g", desc = "File explorer", action = ":Telescope file_browser" },
                      { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                      { icon = " ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
                      { icon = " ", key = "x", desc = "Projects", action = ":Telescope projects" },
                      { icon = "舘", key = "l", desc = "Back to Dashboard", action = ":lua Snacks.dashboard()" },
                      { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                      { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                    sections = {
                        { section = "terminal", cmd = "fortune -s | cowsay", hl = "header", padding = 1, indent = 8 },
                        { title = "MRU", padding = 1 },
                        { section = "recent_files", limit = 8, padding = 1 },
                        { title = "MRU ", file = vim.fn.fnamemodify(".", ":~"), padding = 1 },
                        { section = "recent_files", cwd = true, limit = 8, padding = 1 },
                        { title = "Sessions", padding = 1 },
                        { section = "projects", padding = 1 },
                        { title = "Bookmarks", padding = 1 },
                        { section = "keys" },
                    },
                },
            },
        },
    },
}
