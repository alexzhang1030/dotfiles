return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- doc: https://www.lazyvim.org/plugins/lsp
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "I", vim.lsp.buf.hover }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
    },
    -- your lsp config or other stuff
  },
  {
    "jinzhongjia/LspUI.nvim",
    branch = "main",
    config = function()
      require("LspUI").setup({
        -- config options go here
      })
    end,
  },
}
