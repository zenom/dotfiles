return {
	'stevearc/conform.nvim',
	lazy = true,
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local conform = require('conform')

		conform.setup({
			formatters_by_ft = {
				ruby = { 'rufo', 'rubocop' }, --rubocop, standardrb, rufo
				eruby = { 'erb_format', 'rubocop' },
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
		end, {})
	end,
}
