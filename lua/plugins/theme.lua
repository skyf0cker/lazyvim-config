return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon",
    },
  },
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    config = function()
      local auto_dark_mode = require("auto-dark-mode")

      auto_dark_mode.setup({
        update_interval = 1000,
        set_dark_mode = function()
          vim.api.nvim_set_option_value("background", "dark", {})
          vim.cmd("colorscheme tokyonight-moon")
        end,
        set_light_mode = function()
          vim.api.nvim_set_option_value("background", "light", {})
          vim.cmd("colorscheme tokyonight-day")
        end,
      })
    end,
  },
}
