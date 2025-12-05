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
vim.opt.mouse = ''
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

vim.opt.scrolloff = 10

-- so important, opens the split on the right/below
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldenable = false  -- Don't fold by default
vim.opt.foldlevel = 99      -- Keep everything open

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.py",
  callback = function()
    vim.schedule(function()
      vim.cmd("normal! zx")  -- Force fold recalculation for Python
    end)
  end,
})
