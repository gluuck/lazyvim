return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- Установка переменных для темы Dracula перед загрузкой
      vim.g.dracula_colorterm = 0
      vim.g.dracula_termcolors = 256
      vim.g.dracula_transparent_bg = 0
    end,
  },
  { "EdenEast/nightfox.nvim", name = "nightfox", lazy = false, priority = 1000 },
  { "navarasu/onedark.nvim", name = "onedark", lazy = false, priority = 1000 },
  { 
    "scottmckendry/cyberdream.nvim", 
    name = "cyberdream", 
    lazy = false, 
    priority = 1000,
    opts = {},
    config = function()
      -- Загрузка цветовой схемы
      vim.cmd.colorscheme("cyberdream")
    end,
  },
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
