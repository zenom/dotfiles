return {
	'nvim-treesitter/nvim-treesitter',
	cmd = { 'TSUpdateSync', 'TSUpdate', 'TSInstall' },
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = {
				'lua',
				'vim',
				'vimdoc',
				'query',
				'javascript',
				'typescript',
				'vimdoc',
				'json',
				'html',
				'css',
				'ruby',
				'rust',
			},
			sync_install = false,
			auto_install = true,
			indent = { enable = true },

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
