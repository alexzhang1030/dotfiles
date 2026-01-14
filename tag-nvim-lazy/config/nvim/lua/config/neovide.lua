local M = {}

function M.init()
  M.config()
end

--- https://neovide.dev/configuration.html#configuration
function M.config()
  vim.g.neovide_window_blurred = true
  vim.g.neovide_opacity = 0.9
end

return M
