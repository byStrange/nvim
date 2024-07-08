require("rakhmatullo.remap")

vim.api.nvim_create_user_command(
  'Cop',
  function()
    vim.cmd('%y+')
  end,
  { nargs = 0 }
)
