return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {},
        gopls = {},
        pyright = {
          root_dir = function(fname)
            return vim.fn.fnamemodify(fname, ":h")
          end,
        },
      },
    },
  },
}
