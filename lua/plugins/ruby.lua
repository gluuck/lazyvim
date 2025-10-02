return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Включаем ruby_lsp здесь, чтобы он был единственным
        ruby_lsp = {},

        -- Остальные Ruby-серверы оставляем отключенными
        solargraph = { enabled = false },
        rubocop = { enabled = false },
        standardrb = { enabled = false },
      },
    },
  },
}
