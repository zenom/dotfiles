return {
	'ThePrimeagen/harpoon',
	keys = {
		{
			'<leader>a',
			function()
				require('harpoon.mark').add_file()
			end,
		},
		{
			'<leader>h',
			function()
				require('harpoon.ui').toggle_quick_menu()
			end,
		},
		{
			'<leader>1',
			function()
				require('harpoon.ui').nav_file(1)
			end,
		},
		{
			'<leader>2',
			function()
				require('harpoon.ui').nav_file(2)
			end,
		},
		{
			'<leader>3',
			function()
				require('harpoon.ui').nav_file(3)
			end,
		},
		{
			'<leader>4',
			function()
				require('harpoon.ui').nav_file(4)
			end,
		},
		{
			'<leader>5',
			function()
				require('harpoon.ui').nav_file(5)
			end,
		},
	},

	config = function()
		require('harpoon').setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) / 2,
			},
		})
	end,
}
