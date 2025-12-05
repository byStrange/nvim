return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'NeoTree',
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<C-n>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    event_handlers = {

      {
        event = 'file_opened',
        handler = function(file_path)
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<C-n>'] = 'close_window',
        },
      },
    },
  },
}
