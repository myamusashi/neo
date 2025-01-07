-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "i" }, "<C-i>", "<cmd>IconPickerNormal<cr>", { noremap = true, silent = true })
map(
	"n",
	"<leader>t",
	"<cmd>FloatermNew --height=0.8 --width=0.8 --wintype=float<cr>",
	{ desc = "Terminal", noremap = true, silent = true }
)

map({ "n", "v" }, "<C-S-h>", "<Plug>GoNSMLeft", { noremap = true, silent = true })
map({ "n", "v" }, "<C-S-j>", "<Plug>GoNSMDown", { noremap = true, silent = true })
map({ "n", "v" }, "<C-S-k>", "<Plug>GoNSMUp", { noremap = true, silent = true })
map({ "n", "v" }, "<C-S-l>", "<Plug>GoNSMRight", { noremap = true, silent = true })
