-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'tailwind-tools',
      'onsails/lspkind-nvim',
      -- ...
    },
    opts = function()
      return {
        -- ...
        formatting = {
          format = require('lspkind').cmp_format {
            before = require('tailwind-tools.cmp').lspkind_format,
          },
        },
      }
    end,
  },
}
