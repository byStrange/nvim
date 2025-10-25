-- visual width of tab character
vim.opt.tabstop = 2

-- number of spaces that gets inserted whene pressed tab
vim.opt.shiftwidth = 2

-- convert tab chars to spaces
vim.opt.expandtab = true

-- sync backspace with tab
vim.opt.softtabstop = 2

-- do smart autoindenting when starting a new line
vim.opt.smartindent = true

-- ngl sometimes this is useful
vim.opt.swapfile = true

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

-- no mouse bs
vim.opt.mouse = ""
vim.opt.showmode = false

vim.schedule(function()
   vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

-- save history
vim.opt.undofile = true

-- smart case!
vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.updatetime = 250
-- timeout pls
vim.opt.timeoutlen = 300

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.incommand = 'split'

vim.opt.scrolloff = 10
