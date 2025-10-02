return {
  -- Заменяем telescope.nvim на fzf-lua
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-mini/mini.nvim" }, -- для использования mini.icons
    config = function()
      require("fzf-lua").setup({
        -- Настройки для совместимости с LazyVim
        keymap = {
          fzf = {
            ["ctrl-j"] = "down";
            ["ctrl-k"] = "up";
          },
        },
        -- Настройка внешнего вида
        fzf_opts = {
          ["--layout"] = "reverse",
          ["--height"] = "90%",
          ["--info"] = "inline",
        },
      })
    end,
  },
}