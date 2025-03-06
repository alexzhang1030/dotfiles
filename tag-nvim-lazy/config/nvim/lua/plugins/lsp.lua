return {
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
    opts = {
      inlay_hints = { enabled = false },
    },
    -- your lsp config or other stuff
  },
  -- Lsp UI force requires neovim >= 0.10.0, so let's not use it for now
  {
    "jinzhongjia/LspUI.nvim",
    branch = "main",
    config = function()
      require("LspUI").setup({
        -- config options go here
      })
    end,
  },
  -- -- lsp lens
  {
    "VidocqH/lsp-lens.nvim",
  },

  -- zig
  {
    "ziglang/zig.vim",
    ft = { "zig" },
    init = function()
      vim.g.zig_fmt_autosave = 0 -- handled by lsp
    end,
  },
}
