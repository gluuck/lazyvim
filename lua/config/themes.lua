local M = {}

M.themes = {
  "cyberdream",
  "tokyonight",
  "gruvbox",
  "catppuccin",
  "dracula",
  "nightfox",
  "onedark",
  "rose-pine",
  "nord",
  "kanagawa",
}
M.current_theme_index = 1

function M.switch_theme()
  M.current_theme_index = M.current_theme_index % #M.themes + 1
  local theme = M.themes[M.current_theme_index]
  vim.cmd.colorscheme(theme)
end

function M.current_theme()
  print("Current theme: " .. (vim.g.colors_name or "default"))
end

return M
