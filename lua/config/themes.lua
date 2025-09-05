local M = {}

M.themes = { "tokyonight", "gruvbox", "catppuccin", "dracula", "nightfox", "onedark", "cyberdream" }
M.current_theme_index = 1

function M.switch_theme()
  M.current_theme_index = M.current_theme_index % #M.themes + 1
  local theme = M.themes[M.current_theme_index]
  vim.cmd.colorscheme(theme)
end

return M
