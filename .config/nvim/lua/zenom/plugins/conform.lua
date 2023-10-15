return {
	'stevearc/conform.nvim',
	lazy = true,
	event = { 'BufReadPre', 'BufNewFile' },
	-- keys = {
	--   { '<leader>f', function() require('conform').format() end }
	-- },
	config = function()
		local conform = require('conform')

		conform.setup({
			formatters_by_ft = {
				ruby = { 'rufo', 'rubocop' }, --rubocop, standardrb, rufo
				eruby = { 'erb_format', 'rubocop', 'htmlbeautifier' },
				lua = { 'stylua' },
				javascript = { 'prettier' },
				css = { 'prettier' },
				scss = { 'prettier' },
				json = { 'prettier' },
				yaml = { 'prettier' },
				markdown = { 'prettier' },
				html = { 'htmlbeautifier' },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
		vim.keymap.set({ 'n', 'v' }, '<leader>fp', function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = 'Format file or range (in visual mode)' })
	end,
}
