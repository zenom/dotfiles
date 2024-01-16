return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
	},
	config = function()
		local lspconfig = require('lspconfig')
		local cmp_nvim_lsp = require('cmp_nvim_lsp')
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }

		local on_attach = function(_, bufnr)
			opts.buffer = bufnr
			keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
			keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
			keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
			keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
			keymap.set('n', '<leader>qq', '<cmd>Telescope diagnostics bufnr=0<CR>', opts)
			keymap.set('n', '<leader>lr', vim.cmd.LspRestart, opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()
		local signs = { Error = ' ', Warn = ' ', Hint = '󰠠 ', Info = ' ' }
		for type, icon in pairs(signs) do
			local hl = 'DiagnosticSign' .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
		end

		lspconfig['html'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig['tsserver'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig['cssls'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			-- filetypes = { 'css', 'scss', 'sass' }
		})

		lspconfig['tailwindcss'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- lspconfig['solargraph'].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- })

		lspconfig['ruby_ls'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig['stimulus_ls'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig['rust_analyzer'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- lspconfig['fuzzy_ls'].setup({
		-- 	on_attach = on_attach,
		-- 	default_config = {
		-- 		cmd = { 'fuzzy' },
		-- 		filetypes = { 'ruby' },
		-- 		root_dir = function(fname)
		-- 			return lspconfig.util.find_git_ancestor(fname)
		-- 		end,
		-- 		settings = {},
		-- 		init_options = {
		-- 			allocationType = 'ram',
		-- 			indexGems = true,
		-- 			reportDiagnostics = true,
		-- 		},
		-- 	},
		-- })

		-- lspconfig['rubocop'].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- })

		lspconfig['lua_ls'].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = { -- custom settings for lua
				Lua = {
					-- make the language server recognize "vim" global
					diagnostics = {
						globals = { 'vim' },
					},
					workspace = {
						-- make language server aware of runtime files
						library = {
							[vim.fn.expand('$VIMRUNTIME/lua')] = true,
							[vim.fn.stdpath('config') .. '/lua'] = true,
						},
					},
				},
			},
		})
	end,
}
