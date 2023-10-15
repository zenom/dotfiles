return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	cmd = 'Telescope',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	keys = {
		{
			'<leader>ff',
			function()
				require('telescope.builtin').find_files()
			end,
		},
		{
			'<leader>fb',
			function()
				require('telescope.builtin').buffers()
			end,
		},
		{
			'<leader>fg',
			function()
				require('telescope.builtin').live_grep()
			end,
		},
		{
			'<leader>qq',
			function()
				require('telescope.builtin').quickfix()
			end,
		},
		{
			'<leader>fd',
			function()
				require('telescope.builtin').diagnostics()
			end,
		},
		-- {
		-- 	'<leader>rm',
		-- 	function()
		-- 		require('telescope.builtin').find_files({
		-- 			search_dirs = { './app/models' },
		-- 			-- theme = 'dropdown',
		-- 			-- shorten_path = true,
		-- 			-- prompt = '~ Ruby Models ~',
		-- 		})
		-- 	end,
		-- },
		{
			'<leader>rs',
			function()
				require('telescope.builtin').find_files({
					search_dirs = { './app/services' },
					theme = 'dropdown',
				})
			end,
		},
		{
			'<leader>rc',
			function()
				require('telescope.builtin').find_files({
					search_dirs = { './app/controllers' },
					theme = 'dropdown',
				})
			end,
		},
		{
			'<leader>rv',
			function()
				require('telescope.builtin').find_files({
					search_dirs = { './app/views' },
					theme = 'dropdown',
				})
			end,
		},
	},
	config = function()
		local telescope = require('telescope')

		telescope.setup({
			defaults = {
				path_display = { 'shorten ' },
				preview = false,
				layout_config = {
					height = 20,
				},
			},
		})
		-- search ruby models
		vim.keymap.set('n', '<leader>rm', function()
			require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({
				search_dirs = { vim.fn.getcwd() .. '/app/models/' },
				path_display = { 'shorten' },
				prompt_title = '~ Ruby Models ~',
				previewer = false,
				layout_config = {
					height = 10,
				},
			}))
		end, {})

		vim.keymap.set('n', '<leader>rs', function()
			require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({
				search_dirs = { vim.fn.getcwd() .. '/app/services/' },
				path_display = { 'shorten' },
				prompt_title = '~ Ruby Services ~',
				previewer = false,
				layout_config = {
					height = 10,
				},
			}))
		end, {})
		vim.keymap.set('n', '<leader>rv', function()
			require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({
				search_dirs = { vim.fn.getcwd() .. '/app/views/' },
				path_display = { 'shorten' },
				prompt_title = '~ Ruby Views ~',
				previewer = false,
				layout_config = {
					height = 10,
				},
			}))
		end, {})
		vim.keymap.set('n', '<leader>rc', function()
			require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({
				search_dirs = { vim.fn.getcwd() .. '/app/controllers/' },
				path_display = { 'shorten' },
				prompt_title = '~ Ruby Controllers ~',
				previewer = false,
				layout_config = {
					height = 10,
				},
			}))
		end, {})
		vim.keymap.set('n', '<leader>rt', function()
			require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({
				search_dirs = { vim.fn.getcwd() .. '/spec/', vim.fn.getcwd() .. '/test' },
				path_display = { 'shorten', 3 },
				prompt_title = '~ Ruby Test/Spec ~',
				previewer = false,
				layout_config = {
					height = 10,
				},
			}))
		end, {})
	end,
}
