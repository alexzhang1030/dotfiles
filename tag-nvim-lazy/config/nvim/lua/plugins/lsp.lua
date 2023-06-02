return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- doc: https://www.lazyvim.org/plugins/lsp
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "I", vim.lsp.buf.hover }
  end,
}
