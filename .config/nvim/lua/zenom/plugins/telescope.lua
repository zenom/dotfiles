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
		vim.keymap.set('n', '<leader>fm', function()
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

		vim.keymap.set('n', '<leader>fs', function()
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
		vim.keymap.set('n', '<leader>fv', function()
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
		vim.keymap.set('n', '<leader>fc', function()
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
		vim.keymap.set('n', '<leader>ft', function()
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
