-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- use `vim.keymap.set` instead
local map = vim.keymap.set

map("n", "<leader>d", "yyp", { desc = "Duplicate line" })
map("i", "jk", "<Esc>", { desc = "Esc with jk", remap = true })
map("n", "H", "^", { desc = "Move to the start of the line" })
map("n", "L", "$", { desc = "Move to the end of the line" })

map("x", "<leader>d", "y`>p`<")
map("x", "<C-K>", ":m '<-2<CR>gv=gvzz", { noremap = true, silent = true })
map("x", "<C-J>", ":m '>+1<CR>gv=gvzz", { noremap = true, silent = true })
