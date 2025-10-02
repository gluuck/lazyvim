return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    opts = {
      popup_border_style = "rounded",
      filesystem = {
        filtered_items = {
          visible = true, -- теперь скрытые файлы будут видны с иконкой "~"
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false, -- отображать скрытые файлы
        },
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none",
        },
      },
      default_component_configs = {
        icon = {
          source = "nvim-web-devicons",
        },


        indent = {
          with_markers = false,
        },

        modified = {
          symbol = "[+]",
        },
        git_status = {
          symbols = {
            added = "",
            deleted = "",
            modified = "",
            renamed = "",
            untracked = "",
            ignored = "",
            unstaged = "M",
            staged = "S",
            conflict = "",
          },
        },
      },
    },
    config = function(_, opts)
      require('neo-tree').setup(opts)
      
      -- Установка ярких цветов для NeoTree без изменения фона
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "cyberdream",
        callback = function()
          vim.cmd "highlight NeoTreeRootName gui=bold"
          vim.cmd "highlight NeoTreeDirectoryName guifg=#f5d368 gui=bold"
          vim.cmd "highlight NeoTreeFileNameOpened guifg=#3ec5ff"
          vim.cmd "highlight NeoTreeFileIcon guifg=#7ec76b"
          vim.cmd "highlight NeoTreeFileName guifg=#abb2bf"
        end,
      })
    end,
  }
}