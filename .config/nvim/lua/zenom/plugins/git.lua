-- return {
-- 	'tpope/vim-fugitive',
-- 	config = function()
-- 		vim.keymap.set('n', '<leader>gg', vim.cmd.Git)
-- 	end,
-- }

return {
	'NeogitOrg/neogit',
	dependencies = {
		'nvim-lua/plenary.nvim', -- required
		'nvim-telescope/telescope.nvim', -- optional
		'sindrets/diffview.nvim', -- optional
		'ibhagwan/fzf-lua', -- optional
	},
	config = function()
		local neogit = require('neogit')
		neogit.setup({})

		vim.keymap.set('n', '<leader>gg', function()
			neogit.open({ kind = 'split_above' })
		end)
	end,
}
