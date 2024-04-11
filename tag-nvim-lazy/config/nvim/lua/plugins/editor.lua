-- editor behaviours

return {
  -- wakatime
  {
    "wakatime/vim-wakatime",
  },
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
  -- auto indent
  {
    "vidocqh/auto-indent.nvim",
    opts = {},
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
  -- treesitter based to hjkl
  -- default keymaps:
  -- toggle: `alt + v`
  -- toggle_outer: `shift + alt + v`
  -- toggle_named: `shift + alt + n`
  {
    "gsuuon/tshjkl.nvim",
    config = true,
  },
  {
    "DreamMaoMao/yazi.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },

    keys = {
      { "<leader>gy", "<cmd>Yazi<CR>", desc = "Toggle Yazi" },
    },
  },
  -- better error
  -- {
  --   "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  --   name = "lsp_lines",
  --   event = "VeryLazy",
  --   config = function()
  --     require("lsp_lines").setup()
  --   end,
  -- },
}
