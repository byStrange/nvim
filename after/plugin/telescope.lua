local telescope = require('telescope')
local builtin = require("telescope.builtin")

telescope.setup{
  defaults = {
    file_ignore_patterns = {"%.pyc", "node_modules", "%.git/", "dist/", "build/"} 
  }
}

vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")})
end, { desc = "telescope live grep"})
