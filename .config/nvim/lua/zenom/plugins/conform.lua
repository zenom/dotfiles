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
			format_on_save = function(bufnr)
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
				return { timeout_ms = 1000, lsp_fallback = true }
			end,
		})
		vim.keymap.set({ 'n', 'v' }, '<leader>r', function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, {})

		vim.api.nvim_create_user_command('FormatDisable', function(args)
			if args.bang then
				-- FormatDisable! will disable formatting just for this buffer
        print 'Formatting disabled for buffer'
				vim.b.disable_autoformat = true
			else
        print 'Formatting disabled'
				vim.g.disable_autoformat = true
			end
		end, {
			desc = 'Disable autoformat-on-save',
			bang = true,
		})
		vim.api.nvim_create_user_command('FormatEnable', function()
      print 'Formatting re-enabled.'
			vim.b.disable_autoformat = false
			vim.g.disable_autoformat = false
		end, {
			desc = 'Re-enable autoformat-on-save',
		})
	end,
}
