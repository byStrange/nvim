vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

