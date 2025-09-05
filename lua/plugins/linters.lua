return {
  "nvim-lint",
  opts = {
    linters_by_ft = {
      javascript = { "eslint" },
      go = { "golangci-lint" },
      python = { "ruff" },
    },
  },
}
