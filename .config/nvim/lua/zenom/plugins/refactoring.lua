return {
	'ThePrimeagen/refactoring.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-treesitter/nvim-treesitter',
	},
	config = function()
		require('refactoring').setup()
		vim.keymap.set('x', '<leader>ri', function()
			require('refactoring').refactor('Inline Variable')
		end)
		vim.keymap.set('x', '<leader>rm', function()
			require('refactoring').refactor('Extract Function')
		end)
	end,
}
