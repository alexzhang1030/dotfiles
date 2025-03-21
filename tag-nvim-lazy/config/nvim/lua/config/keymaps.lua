-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- map <leader> key
vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- ignore the macros realted keymaps
keymap.set("n", "q", "<Nop>")
keymap.set("n", "Q", "<Nop>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- quick move
-- keymap.set("n", "J", "5j")
-- keymap.set("v", "J", "5j")
-- keymap.set("n", "K", "5k")
-- keymap.set("v", "K", "5k")
-- keymap.set("n", "H", "^")
-- keymap.set("v", "H", "^")
-- keymap.set("n", "L", "$")
-- keymap.set("v", "L", "$")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- write
keymap.set("n", "<leader>fw", ":w<CR>", { desc = "Write file" })

---------------------
-- Plugin Keymaps
---------------------

-- navbuddy
keymap.set("n", "<leader>cn", ":Navbuddy<CR>", { desc = "Show Navbuddy" })

-- ccc
keymap.set("n", "<leader>cc", ":CccPick<CR>", { desc = "Open color picker" })

-- hypersonic
-- keymap.set("n", "<leader>cr", ":Hypersonic <CR>", { desc = "Open Hypersonic", silent = true })

-- ufo
keymap.set("n", "zR", require("ufo").openAllFolds)
keymap.set("n", "zM", require("ufo").closeAllFolds)

-- spider
keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
keymap.set({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

-- refactoring
keymap.set("x", "<leader>re", ":Refactor extract ")
keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")

keymap.set("x", "<leader>rv", ":Refactor extract_var ")

keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

keymap.set("n", "<leader>rI", ":Refactor inline_func")

keymap.set("n", "<leader>rb", ":Refactor extract_block")
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")

-- manual open nvim-cmp
keymap.set("i", "<C-p>", "<C-Space>", { noremap = true, silent = true })
