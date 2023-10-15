return {
	'vim-test/vim-test',
	config = function()
		vim.keymap.set('n', '<leader>tf', '<cmd>:TestFile<CR>', { desc = '[T]est [F]ile' })
		vim.keymap.set('n', '<leader>tn', '<cmd>:TestNearest<CR>', { desc = '[T]est [N]earest' })
		vim.g['test#strategy'] = 'neovim'
		vim.g['test#echo_command'] = 0
		vim.g['test#neovim#term_position'] = 'botright 20'
	end,
}
