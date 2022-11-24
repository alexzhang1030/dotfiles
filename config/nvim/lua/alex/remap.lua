local nnoremap = require("alex.keymap").nnoremap
local vnoremap = require("alex.keymap").vnoremap

nnoremap("<leader>[", "<cmd>Ex<CR>")
nnoremap("J", "5j")

nnoremap("K", "5k")
nnoremap("K", "5k")
vnoremap("K", "5k")
vnoremap("K", "5k")

nnoremap("H", "0")
nnoremap("L", "$")
vnoremap("H", "0")
vnoremap("L", "$")
