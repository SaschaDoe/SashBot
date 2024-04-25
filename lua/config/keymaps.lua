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

map(
  "n",
  "<leader>fd",
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'fd', '--type', 'd'} })<CR>",
  { noremap = true, silent = true }
)
map("v", "<C-c>", '"+y', { noremap = true, silent = true })
map("n", "<C-v>", '"+p', { noremap = true, silent = true })
map("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })
map("v", "<C-x>", '"+x', { noremap = true, silent = true })

map("n", "ö", "(", { noremap = true, silent = true })
map("n", "Ö", "{", { noremap = true, silent = true })
map("n", "<C-ö>", "[m", { noremap = true, silent = true })
map("n", "ä", ")", { noremap = true, silent = true })
map("n", "Ä", "}", { noremap = true, silent = true })
map("n", "<C-ä>", "]m", { noremap = true, silent = true })

-- find costume directory
map("n", "<leader>fh", ":Telescope find_files hidden=true cwd=C:/Users/sasch/<CR>")
