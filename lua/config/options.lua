-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- UI
vim.g.autoformat = false
vim.g.snacks_animate = true
vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_cmp = "nvim-cmp"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 1
vim.opt.scrolloff = 0
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.autowrite = false
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- Editor
vim.opt.wrap = true
vim.opt.linebreak = true

-- Indentation
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Split
vim.opt.splitbelow = true

-- Folding
vim.opt.foldenable = true
vim.opt.foldmethod = "manual"
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- Misc
vim.api.nvim_create_autocmd("FileType", {
  pattern = "nix",
  callback = function()
    vim.bo.shiftwidth = 2  -- Indentasi 2 spasi
    vim.bo.tabstop = 2     -- Tab dianggap sebagai 2 spasi
  end,
})
