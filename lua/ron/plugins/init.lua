return {
	-- detect tabstop and shiftwidth automatically
	{'tpope/vim-sleuth'},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {"nvim-lua/plenary.nvim"},
  },

	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		main = 'nvim-treesitter.configs',
		lazy = false,
		build = "TSUpdate",
	},

	{ -- Autoformat
    'stevearc/conform.nvim',
  },

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip"
		}
	},
	-- colorscheme
	{
		'folke/tokyonight.nvim',
		priority = 1000,
	},

	-- gitsigns
	{
    'lewis6991/gitsigns.nvim',
  }
}
