require("alex.plugins-setup")
require("alex.core.options")
require("alex.core.colorscheme")
require("alex.core.keymaps")

-- require plugins
require("alex.plugins.comment")
require("alex.plugins.nvim-tree")
require("alex.plugins.lualine")
require("alex.plugins.telescope")
require("alex.plugins.nvim-cmp")
require("alex.plugins.lsp.mason")
require("alex.plugins.lsp.lspconfig") -- fix bug
require("alex.plugins.lsp.lspsaga") -- fix bug
require("alex.plugins.lsp.null-ls")
require("alex.plugins.autopairs")
require("alex.plugins.treesitter")
require("alex.plugins.gitsigns")
require("neoscroll").setup()
