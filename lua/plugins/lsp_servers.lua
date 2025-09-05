return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {}, -- Ruby LSP
        tsserver = {},    -- JavaScript/TypeScript LSP
        gopls = {},       -- Go LSP
        pyright = {
          root_dir = function(fname)
            return vim.fn.fnamemodify(fname, ":h")
          end,
        }, -- Python LSP
      },
    },
  },
}
