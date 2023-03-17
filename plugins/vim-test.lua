local prefix = "<leader>r"

return {
  "vim-test/vim-test",
  init = function() vim.g["test#strategy"] = "toggleterm" end,
  config = function()
    vim.keymap.set("n", "t<C-n>", function() return vim.fn["TestNearest"]() end, { expr = true })
  end,
  keys = {
    { prefix, desc = "Test" },
    { prefix .. "n", "<cmd>TestNearest<CR>", desc = "Run nearest test" },
    { prefix .. "f", "<cmd>TestFile<CR>", desc = "Run current test file" },
    { prefix .. "s", "<cmd>TestSuite<CR>", desc = "Run whole test suite" },
    { prefix .. "l", "<cmd>TestLast<CR>", desc = "Run the last test" },
    { prefix .. "v", "<cmd>TestVisit<CR>", desc = "Run the last test file you were in" },
  },
}
