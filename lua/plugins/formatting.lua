return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        ruby = { "rubocop" },
        go = { "gofmt" },
        python = { "black" },
        sql = { "sleek" },
        eruby = { "erb_format" }, -- Changed to erb_format
        slim = { "prettierd" },
        css = { "prettierd" },
        vue = { "prettierd" },
      },
    },
  },
}