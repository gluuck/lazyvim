-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.diagnostic.config({
  underline = false,
  virtual_text = true,  -- оставить текст диагностики на полях
  signs = true,         -- оставить иконки диагностики в gutter
  update_in_insert = false,
})

-- Отключить подчеркивания для LSP диагностики и других источников
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Отключить подчеркивания диагностики
    vim.cmd("highlight! link DiagnosticUnderlineError NONE")
    vim.cmd("highlight! link DiagnosticUnderlineWarn NONE")
    vim.cmd("highlight! link DiagnosticUnderlineInfo NONE")
    vim.cmd("highlight! link DiagnosticUnderlineHint NONE")
    
    -- Отключить другие типы подчеркиваний, которые могут использоваться LSP
    vim.cmd("highlight! link LspReferenceText NONE")
    vim.cmd("highlight! link LspReferenceRead NONE")
    vim.cmd("highlight! link LspReferenceWrite NONE")
    
    -- Отключить Treesitter-связанные подчеркивания
    vim.cmd("highlight! link TreesitterContext NONE")
    vim.cmd("highlight! link TreesitterContextLineNumber NONE")
    vim.cmd("highlight! link TreesitterContextBottom NONE")
    
    -- Отключить все возможные подчеркивания, которые могут создавать визуальные эффекты
    vim.cmd("highlight clear DiagnosticVirtualTextError")
    vim.cmd("highlight clear DiagnosticVirtualTextWarn") 
    vim.cmd("highlight clear DiagnosticVirtualTextInfo")
    vim.cmd("highlight clear DiagnosticVirtualTextHint")
    
    -- Отключить возможные подчеркивания от Treesitter контекста
    vim.cmd("highlight link TSContext NONE")
    vim.cmd("highlight link TreesitterContextStart NONE")
    vim.cmd("highlight link TreesitterContextEnd NONE")
    
    -- Отключить подчеркивания ссылок
    vim.cmd("highlight clear LspCodeLens")
    vim.cmd("highlight clear LspCodeLensSeparator")
    vim.cmd("highlight clear LspInlayHint")
  end,
})

-- Также применить настройки подчеркиваний при открытии файлов
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    -- Повторно применить настройки подчеркиваний для текущего буфера
    vim.defer_fn(function()
      vim.cmd("highlight! link DiagnosticUnderlineError NONE")
      vim.cmd("highlight! link DiagnosticUnderlineWarn NONE")
      vim.cmd("highlight! link DiagnosticUnderlineInfo NONE")
      vim.cmd("highlight! link DiagnosticUnderlineHint NONE")
      vim.cmd("highlight! link LspReferenceText NONE")
      vim.cmd("highlight! link LspReferenceRead NONE")
      vim.cmd("highlight! link LspReferenceWrite NONE")
    end, 100)
  end,
})

-- Применить настройки подчеркиваний при подключении LSP
vim.api.nvim_create_autocmd("LspAttach", {
  pattern = "*",
  callback = function(args)
    -- Отключить все подчеркивания для подключенного LSP-сервера
    vim.defer_fn(function()
      vim.cmd("highlight! link DiagnosticUnderlineError NONE")
      vim.cmd("highlight! link DiagnosticUnderlineWarn NONE")
      vim.cmd("highlight! link DiagnosticUnderlineInfo NONE")
      vim.cmd("highlight! link DiagnosticUnderlineHint NONE")
      vim.cmd("highlight! link LspReferenceText NONE")
      vim.cmd("highlight! link LspReferenceRead NONE")
      vim.cmd("highlight! link LspReferenceWrite NONE")
    end, 50)
  end,
})

-- Включаем 24-битные цвета для лучшей поддержки ярких цветов
vim.opt.termguicolors = true

-- Отключить анимации, если нужно (по умолчанию в LazyVim 15.x)
vim.g.snacks_animate = true
