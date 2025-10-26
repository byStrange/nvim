return { -- which-key
  'folke/which-key.nvim',
  event = 'VeryLazy', -- load after UI; keeps start-up fast
  config = function()
    require('which-key').setup {
      preset = 'modern', -- nicer icons
      delay = function(ctx) -- pop-up after 300 ms hold
        return ctx.plugin and 0 or 300
      end,
    }
  end,
}
