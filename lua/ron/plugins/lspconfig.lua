return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'j-hui/fidget.nvim', opts = {} },
  },

  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('ron-lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or 'n'
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        -- juump to definition
        map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')

        -- goto reference
        map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

        -- fuzzy find all symbols in current buffer
        map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

        -- fuzzy find all symbols in workspace
        map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

        if vim.g.have_nerd_font then
          local signs = { ERROR = '', WARN = '', INFO = '', HINT = '' }
          local diagnostic_signs = {}
          for type, icon in pairs(signs) do
            diagnostic_signs[vim.diagnostic.severity[type]] = icon
          end
          vim.diagnostic.config { signs = { text = diagnostic_signs }, virtual_text = true }
        end
      end,
    })
  end,
}
