local opts = { noremap = true, silent = true }

local alt_h = "˙"
local alt_j = "∆"
local alt_k = "˚"
local alt_l = "¬"

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Keep selection after indent change
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Use TAB to cycle buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)

-- Resize windows
keymap("n", alt_k, ":resize +2<CR>", opts)
keymap("n", alt_j, ":resize -2<CR>", opts)
keymap("n", alt_h, ":vertical resize -2<CR>", opts)
keymap("n", alt_l, ":vertical resize +2<CR>", opts)
