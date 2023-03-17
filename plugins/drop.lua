return {
  "folke/drop.nvim",
  event = "VimEnter",
  config = function()
    require("drop").setup {
      ---@type DropTheme|string
      -- one of "leaves", "snow", "stars"
      theme = "snow", -- can be one of rhe default themes, or a custom theme
      max = 60, -- maximum number of drops on the screen
      interval = 150, -- every 150ms we update the drops
      --screensaver = 1000 * 60 * 5, -- show after 5 minutes. Set to false, to disable
      screensaver = 1000 * 60, -- Set to false, to disable, milliseconds
      filetypes = { "dashboard", "alpha", "starter" }, -- will enable/disable automatically for the following filetypes
    }
  end,
}
