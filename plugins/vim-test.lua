local prefix = "<leader>r"

return {
  "vim-test/vim-test",
  init = function() vim.g["test#strategy"] = "toggleterm" end,
  keys = {
    { prefix,        desc = "Test" },
    { prefix .. "n", vim.cmd.TestNearest, desc = "Run nearest test" },
    { prefix .. "f", vim.cmd.TestFile,    desc = "Run current test file" },
    { prefix .. "s", vim.cmd.TestSuite,   desc = "Run whole test suite" },
    { prefix .. "l", vim.cmd.TestLast,    desc = "Run the last test" },
    { prefix .. "v", vim.cmd.TestVisit,   desc = "Run the last test file you were in" },
  },
}
