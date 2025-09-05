return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-tree/nvim-web-devicons",
      opts = {
        override = {
          slim = {
            icon = "",
            color = "#e44d26",
            name = "Slim",
          },
        },
      },
    },
    "MunifTanjim/nui.nvim",
  },
  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false, -- Показывать файлы, начинающиеся с точки
        hide_gitignore = false, -- Показывать файл .gitignore
        hide_gitignored = false, -- Показывать файлы, игнорируемые Git
        always_show_folders = true,
      },
    },
  },
}
