return {
  -- Заменяем nvim-cmp на blink.cmp
  {
    "saghen/blink.cmp",
    -- Optional: if you want to load it after the optimal number of modules to reduce startup time
    lazy = false,

    opts = {
      -- Your blink.cmp configuration
      keymap = {
        -- Enable all default keymaps
        preset = "default",
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<C-Space>"] = { "show", "show_documentation", "hide", "fallback" },
      },

      -- Show snippets ahead of regular completion items
      -- Note: experimental_snippets has been removed in newer versions
      -- Use item format instead

      -- Configure sources
      sources = {
        providers = {
          buffer = {
            opts = {
              get_bufnrs = function()
                local max_filesize = 1000000 -- 1MB in bytes
                local bufs = {}
                for _, buf in ipairs(vim.api.nvim_list_bufs()) do
                  if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, "buftype") == "" then
                    local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size < max_filesize then
                      table.insert(bufs, buf)
                    end
                  end
                end
                return bufs
              end,
            },
          },
        },
      },
    },
  },
}
