return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      flash = true,
    },
  },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = true,
  },

  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    opts = {
      theme = "wave",
    },
  },

  {
    "2nthony/vitesse.nvim",
    name = "vitesse",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      colorscheme = "vitesse",
    },
  },
}
