-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = ".*",
  command = [[:%s/\s\+$//e]],

})

-- Усиление яркости цветов для темы cyberdream, но без изменения фона
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "cyberdream",
  callback = function()
    -- Увеличение яркости основных синтаксических элементов (еще ярче)
    vim.cmd "highlight String guifg=#7ec76b gui=bold"      -- Ярко-зеленый для строк (еще ярче)
    vim.cmd "highlight Number guifg=#ff9c6a gui=bold"      -- Более яркий оранжевый для чисел
    vim.cmd "highlight Boolean guifg=#ff9c6a gui=bold"     -- Более яркий оранжевый для булевых
    vim.cmd "highlight Function guifg=#3ec5ff gui=bold"    -- Более яркий синий для функций
    vim.cmd "highlight Keyword guifg=#d749e8 gui=bold"     -- Более яркий фиолетовый для ключевых слов
    vim.cmd "highlight Type guifg=#f5d368 gui=bold"        -- Более яркий желтый для типов
    vim.cmd "highlight Constant guifg=#ff9c6a gui=bold"    -- Более яркий оранжевый для констант
    vim.cmd "highlight Comment guifg=#a0a8b5 gui=italic"   -- Более заметный комментарий
    vim.cmd "highlight Conditional guifg=#d749e8 gui=bold" -- Более яркий фиолетовый для условий
    vim.cmd "highlight Repeat guifg=#d749e8 gui=bold"      -- Более яркий фиолетовый для циклов
    vim.cmd "highlight Label guifg=#f5d368 gui=bold"       -- Более яркий желтый для меток
    vim.cmd "highlight Operator guifg=#3bc5ff gui=bold"    -- Более яркий голубой для операторов
    vim.cmd "highlight StorageClass guifg=#f5d368 gui=bold" -- Более яркий желтый для storage class
    vim.cmd "highlight Structure guifg=#f5d368 gui=bold"   -- Более яркий желтый для структур
    vim.cmd "highlight Identifier guifg=#3ec5ff gui=bold"  -- Более яркий синий для идентификаторов
    vim.cmd "highlight Statement guifg=#d749e8 gui=bold"   -- Более яркий фиолетовый для операторов
    
    -- Усиление яркости для дополнительных элементов (еще ярче)
    vim.cmd "highlight PreProc guifg=#ff6b98 gui=bold"     -- Более яркий розовый для препроцессора
    vim.cmd "highlight Include guifg=#ff6b98 gui=bold"     -- Более яркий розовый для include
    vim.cmd "highlight Define guifg=#ff6b98 gui=bold"      -- Более яркий розовый для define
    vim.cmd "highlight Macro guifg=#ff6b98 gui=bold"       -- Более яркий розовый для макросов
    vim.cmd "highlight Typedef guifg=#f5d368 gui=bold"     -- Более яркий желтый для typedef
    vim.cmd "highlight Exception guifg=#d749e8 gui=bold"   -- Более яркий фиолетовый для исключений
    vim.cmd "highlight Special guifg=#3bc5ff gui=bold"     -- Более яркий голубой для специальных символов
    vim.cmd "highlight SpecialChar guifg=#3bc5ff gui=bold" -- Более яркий голубой для специальных символов
    vim.cmd "highlight Tag guifg=#ff6b98 gui=bold"         -- Более яркий розовый для тегов
    vim.cmd "highlight Delimiter guifg=#d0d8e4 gui=bold"   -- Более светлый серый для разделителей
    
    -- Для NeoTree оставляем яркие цвета, но не меняем фон
    vim.cmd "highlight NeoTreeRootName gui=bold"
    vim.cmd "highlight NeoTreeDirectoryName guifg=#f5d368 gui=bold"
    vim.cmd "highlight NeoTreeFileNameOpened guifg=#3ec5ff"
    vim.cmd "highlight NeoTreeFileIcon guifg=#7ec76b"
    vim.cmd "highlight NeoTreeFileName guifg=#abb2bf"
  end,
})