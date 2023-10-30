return {
	'rgroli/other.nvim',
	config = function()
		require('other-nvim').setup({
			mappings = {
				'rails',
			},
		})
		vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>:Other test<CR>', { noremap = true, silent = true })
	end,
}
