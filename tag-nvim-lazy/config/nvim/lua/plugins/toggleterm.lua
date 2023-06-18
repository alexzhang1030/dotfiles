return {
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
}
