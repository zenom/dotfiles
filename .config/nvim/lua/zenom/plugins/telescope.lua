return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	cmd = 'Telescope',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
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
				local conf = require('telescope.config').values
				require('telescope.builtin').live_grep({
					vimgrep_arguments = table.insert(conf.vimgrep_arguments, '--fixed-strings'),
				})
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
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = 'smart_case', -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
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
		require('telescope').load_extension('fzf')
	end,
}
