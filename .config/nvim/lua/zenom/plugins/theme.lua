-- return {
-- 	'catppuccin/nvim',
-- 	name = 'catppuccin',
-- 	priority = 1000,
-- 	config = function()
-- 		require('catppuccin').setup({
-- 			transparent_background = true,
-- 			term_colors = true,
-- 			integrations = {
-- 				cmp = true,
-- 				gitsigns = true,
-- 				nvimtree = true,
-- 				telescope = {
-- 					enabled = true,
-- 				},
-- 				treesitter = true,
-- 				dashboard = true,
-- 				native_lsp = {
-- 					enabled = true,
-- 					virtual_text = {
-- 						errors = { 'italic' },
-- 						hints = { 'italic' },
-- 						warnings = { 'italic' },
-- 						information = { 'italic' },
-- 					},
-- 					underlines = {
-- 						errors = { 'underline' },
-- 						hints = { 'underline' },
-- 						warnings = { 'underline' },
-- 						information = { 'underline' },
-- 					},
-- 					inlay_hints = {
-- 						background = true,
-- 					},
-- 				},
-- 			},
-- 		})
-- 		vim.cmd.colorscheme('catppuccin-frappe')
-- 	end,
-- }

return {
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local tokyo = require('tokyonight')
		tokyo.setup({
			transparent = true,
			style = 'storm',
			on_highlights = function(hl, c)
				local prompt = '#2d3149'
				hl.TelescopeNormal = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopeBorder = {
					bg = c.bg_dark,
					fg = c.bg_dark,
				}
				hl.TelescopePromptNormal = {
					bg = prompt,
				}
				hl.TelescopePromptBorder = {
					bg = prompt,
					fg = prompt,
				}
				hl.TelescopePromptTitle = {
					bg = prompt,
					fg = prompt,
				}
				hl.TelescopePreviewTitle = {
					bg = c.bg_dark,
					fg = c.bg_dark,
				}
				hl.TelescopeResultsTitle = {
					bg = c.bg_dark,
					fg = c.bg_dark,
				}
			end,
		})
		vim.cmd([[colorscheme tokyonight]])
	end,
}
