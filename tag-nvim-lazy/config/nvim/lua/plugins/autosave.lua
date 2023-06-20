return {
  {
    "okuuva/auto-save.nvim",
    opts = {
      trigger_events = { "FocusLost", "InsertLeave" },
      debounce_delay = 1000,
    },
  },
}
