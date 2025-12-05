return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',

    'hrsh7th/cmp-nvim-lsp',
  },

  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'vue_ls', 'tailwindcss', 'vtsls', 'emmet_language_server', 'intelephense' },
    }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    require('mason-lspconfig').setup {
      handlers = {
        function(server_name)
          local server = require('lspconfig')[server_name] or {}
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end,
      },
    }
  end,
}
