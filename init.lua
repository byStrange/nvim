require("rakhmatullo")
vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },


  {
      "supermaven-inc/supermaven-nvim",
      lazy = false,
      config = function()
        require("supermaven-nvim").setup({})
      end,
  },

  {
    'czheo/mojo.vim',
    lazy = false
  },


  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.cmd('colorscheme tokyonight')

vim.cmd('hi TelescopeNormal guibg=NONE')
vim.cmd('hi TelescopeResultsNormal guibg=NONE')
vim.cmd('hi TelescopePreviewNormal guibg=NONE')
vim.cmd('hi TelescopePromptBorder guibg=NONE')
vim.cmd('hi TelescopePromptNormal guibg=NONE')
vim.cmd('hi TelescopePromptPrefix guibg=none')
vim.cmd('hi TelescopeBorder guibg=NONE guifg=gray')
vim.cmd('hi TelescopeSelection guibg=#002b36 guifg=#93a1a1')
vim.cmd('hi StatusLine guifg=#ffffff guibg=NONE')
vim.cmd('hi WhichKeyNormal guibg=NONE')
vim.cmd('hi NvimTreeEndOfBuffer guibg=NONE guifg=red')
vim.cmd('hi NvimTreeWinSeparator guibg=NONE')
vim.cmd('hi NvimTreeNormal guibg=red')

