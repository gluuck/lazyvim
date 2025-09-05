-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jj to Esc in insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

-- leader w to save in normal mode
vim.keymap.set("n", "<leader>w", "<cmd>write<CR>", { desc = "Save current buffer" })

-- Ctrl n to toggle NeoTree
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree" })

-- Theme switcher
vim.keymap.set("n", "<leader>th", function() require("config.themes").switch_theme() end, { desc = "Switch theme" })
