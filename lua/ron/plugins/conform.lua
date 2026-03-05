return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>fl',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters = {
      djlint = {
        args = { '--reformat', '-' },
      },
    },

    formatters_by_ft = {
      lua = { 'stylua' },
      htmldjango = { 'djlint' },

      -- Conform can also run multiple formatters sequentially
      python = function(bufnr)
        if require("conform").get_formatter_info("ruff_format", bufnr).available then
          return { "ruff_format" }
        else
          return { "isort", "black" }
        end
      end,
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      javascript = { "prettierd", stop_after_first = true },
      html = { "prettierd" },

      ["_"] = { "trim_whitespace" },
    },
  },
}
