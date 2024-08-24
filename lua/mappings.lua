require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


map('n', '<leader>fl', ':Format<CR>', { silent = true, desc = 'Format current buffer' })
map('n', '<leader>fk', ':PrettierFormat<CR>', { silent = true, desc = 'Format current buffer with prettier' })
map('n', '<leader>f;', ':PrettierFormatForce<CR>', { silent = true, desc = 'Force Format current buffer with prettier' })
-- select all buffer contents, but dont copy it
map({ "n", "v" }, "<leader>s", "<ESC>ggVG", { desc = "Select all" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
