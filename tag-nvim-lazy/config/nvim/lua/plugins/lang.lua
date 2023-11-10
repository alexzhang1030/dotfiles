-- store some language enhancement

return {
  -- show regexp meanings
  {
    "tomiis4/Hypersonic.nvim",
    cmd = "Hypersonic",
    config = function()
      require("hypersonic").setup({
        -- config
      })
    end,
  },
  -- typescript tools
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
}
