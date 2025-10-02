return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-mini/mini.nvim" }, -- для использования mini.icons
  config = function()
    require("oil").setup({
      -- Oil configuration here
      float = {
        padding = 4,
        max_width = 120,
        max_height = 40,
        border = "rounded",
        win_options = {
          winblend = 10,
        },
      },
    })

    -- Open parent directory in oil
    vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory in a floating window" })
  end,
}
