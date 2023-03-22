return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require "cmp"
    local luasnip = require "luasnip"

    return {
      mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
          local copilot_keys = vim.fn["copilot#Accept"]()
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif copilot_keys ~= "" and type(copilot_keys) == "string" then
            vim.api.nvim_feedkeys(copilot_keys, "i", true)
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
      },
    }
  end,
}
