require("neotest").setup({
  adapters = {
        require('neotest-jest')({
          jestCommand = "npm test --",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        }),
      },
})
