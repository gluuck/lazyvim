-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jj to Esc in insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

-- leader w to save in normal mode with notification
vim.keymap.set("n", "<leader>w", function()
  local filename = vim.fn.expand("%:t")
  vim.cmd.write()
  require("snacks").notify(("Saved: %s"):format(filename), { title = "File Saved", timeout = 1000 })
end, { desc = "Save current buffer with notification" })

-- Ctrl n to toggle NeoTree
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree" })

-- Space e to toggle NeoTree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree" })

-- Theme switcher
vim.keymap.set("n", "<leader>th", function() require("config.themes").switch_theme() end, { desc = "Switch theme" })

-- Direct cyberdream theme
vim.keymap.set("n", "<leader>tc", function() 
  vim.cmd.colorscheme("cyberdream")
  require("config.themes").current_theme()
end, { desc = "Set cyberdream theme" })

-- fzf-lua mappings (заменяем telescope)
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>lua require('fzf-lua').live_grep()<CR>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('fzf-lua').buffers()<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('fzf-lua').help_tags()<CR>", { desc = "Find help" })

-- Добавляем стандартные настройки для выделения
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
