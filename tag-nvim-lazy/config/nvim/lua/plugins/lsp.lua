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
  -- Lsp UI force requires neovim >= 0.10.0, so let's not use it for now
  -- {
  --   "jinzhongjia/LspUI.nvim",
  --   branch = "main",
  --   config = function()
  --     require("LspUI").setup({
  --       -- config options go here
  --     })
  --   end,
  -- },
  -- -- lsp lens
  {
    "VidocqH/lsp-lens.nvim",
  },
}
