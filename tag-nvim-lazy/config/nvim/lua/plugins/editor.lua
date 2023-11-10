-- editor behaviours

return {
  -- session management
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    },
  },
  -- autosave changes
  {
    "okuuva/auto-save.nvim",
    opts = {
      trigger_events = { "FocusLost", "InsertLeave" },
      debounce_delay = 1000,
    },
  },
  -- flash, quick jump
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
      },
      {
        "S",
        mode = { "o", "x" },
        function()
          require("flash").treesitter()
        end,
      },
    },
  },
  -- add hooks, jump to hooks
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      {
        "nvim-lua/plenary.nvim",
      },
    },
    config = function()
      require("telescope").load_extension("harpoon")
    end,
  },
  -- quick jump subwords
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
  },
  -- toggle terms
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      --[[ things you want to change go here]]
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      size = 20,
      shade_filetypes = {},
      shade_terminals = true,
      close_on_exit = true,
      start_in_insert = true,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    },
  },
  -- fold enhancement
  {
    "kevinhwang91/nvim-ufo",
    name = "ufo",
    dependencies = { { "kevinhwang91/promise-async" } },
    config = function()
      require("ufo").setup({
        -- config
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      })
    end,
  },
}
