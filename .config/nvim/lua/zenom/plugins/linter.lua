return {
	'mfussenegger/nvim-lint',
	config = function()
		local lint = require('lint')
		lint.linters_by_ft = {
			eruby = { 'erb_lint' },
			ruby = { 'rubocop' },
			json = { 'jsonlint' },
			scss = { 'stylelint' },
			javascript = { 'eslint_d' },
			typescript = { 'eslint_d' },
		}
		local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

		vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
