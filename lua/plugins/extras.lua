return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- Анимации
      animate = { enabled = true },
      -- Прокрутка
      scroll = { enabled = true },
      -- Режим Zen (фокус)
      zen = { enabled = true },
      -- Затемнение неактивных областей
      dim = {
        enabled = true,
        only_focused = true,
      },
      -- Индикаторы отступов
      indent = { enabled = true },
      -- Уведомления
      notifier = { enabled = true },
      -- Терминал
      terminal = { enabled = true },
      -- Профайлер
      profiler = { enabled = true },
    },
    keys = {
      {
        "<leader>uz",
        function()
          require("snacks").zen()
        end,
        desc = "Zen Mode",
      },
      {
        "<leader>uZ",
        function()
          require("snacks").zen({ focus = false })
        end,
        desc = "Zen Mode (Unfocus)",
      },
      {
        "<leader>uD",
        function()
          require("snacks").dim()
        end,
        desc = "Dim",
      },
      {
        "<leader>ua",
        function()
          require("snacks").animate.toggle()
        end,
        desc = "Toggle animations",
      },
      {
        "<leader>uS",
        function()
          require("snacks").scroll.toggle()
        end,
        desc = "Toggle scroll",
      },
      {
        "<leader>ug",
        function()
          require("snacks").indent.toggle()
        end,
        desc = "Toggle indent guides",
      },
    },
  },
}

