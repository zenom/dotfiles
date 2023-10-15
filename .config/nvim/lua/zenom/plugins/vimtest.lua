return {
	'vim-test/vim-test',
	dependencies = {
		'preservim/vimux',
		'christoomey/vim-tmux-navigator',
	},
	config = function()
		vim.keymap.set('n', '<leader>tf', '<cmd>:TestFile<CR>', {})
		vim.keymap.set('n', '<leader>tn', '<cmd>:TestNearest<CR>', {})
		vim.keymap.set('n', '<leader>tt', '<cmd>:VimuxTogglePane<CR>', {})
		vim.g['test#strategy'] = 'vimux'
		vim.g['test#echo_command'] = 0
		vim.g['test#neovim#term_position'] = 'botright 20'
	end,
}
