return {
  "ThePrimeagen/harpoon",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
    },
  },
  config = function()
    require("telescope").load_extension("harpoon")
  end,
}
