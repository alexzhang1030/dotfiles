-- ui related things, exclude color-schema
return {
  -- headlines for markdown
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true, -- or `opts = {}`
  },
  -- smooth scroll
  {
    "karb94/neoscroll.nvim",
    version = "*",
    opts = {},
  },
  -- show notification
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  -- highlight todo
  {
    "tzachar/highlight-undo.nvim",
    opts = {},
  },
  -- color picker and hightling
  -- picker: CccPick
  {
    "uga-rosa/ccc.nvim",
    opts = {
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    },
  },
  -- zen mode
  {
    "folke/zen-mode.nvim",
    opts = {},
  },
}
