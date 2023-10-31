return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 1000,
	config = function()
		require('catppuccin').setup({
			transparent_background = true,
			term_colors = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				telescope = {
					enabled = true,
				},
				treesitter = true,
				dashboard = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { 'italic' },
						hints = { 'italic' },
						warnings = { 'italic' },
						information = { 'italic' },
					},
					underlines = {
						errors = { 'underline' },
						hints = { 'underline' },
						warnings = { 'underline' },
						information = { 'underline' },
					},
					inlay_hints = {
						background = true,
					},
				},
			},
		})
		vim.cmd.colorscheme('catppuccin-frappe')
	end,
}

-- return {
-- 	'EdenEast/nightfox.nvim',
-- 	config = function()
-- 		-- Default options
-- 		require('nightfox').setup({
-- 			options = {
-- 				-- Compiled file's destination location
-- 				compile_path = vim.fn.stdpath('cache') .. '/nightfox',
-- 				compile_file_suffix = '_compiled', -- Compiled file suffix
-- 				transparent = false, -- Disable setting background
-- 				terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
-- 				dim_inactive = false, -- Non focused panes set to alternative background
-- 				module_default = true, -- Default enable value for modules
-- 				colorblind = {
-- 					enable = false, -- Enable colorblind support
-- 					simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
-- 					severity = {
-- 						protan = 0, -- Severity [0,1] for protan (red)
-- 						deutan = 0, -- Severity [0,1] for deutan (green)
-- 						tritan = 0, -- Severity [0,1] for tritan (blue)
-- 					},
-- 				},
-- 				styles = { -- Style to be applied to different syntax groups
-- 					comments = 'NONE', -- Value is any valid attr-list value `:help attr-list`
-- 					conditionals = 'NONE',
-- 					constants = 'NONE',
-- 					functions = 'NONE',
-- 					keywords = 'NONE',
-- 					numbers = 'NONE',
-- 					operators = 'NONE',
-- 					strings = 'NONE',
-- 					types = 'NONE',
-- 					variables = 'NONE',
-- 				},
-- 				inverse = { -- Inverse highlight for different types
-- 					match_paren = false,
-- 					visual = false,
-- 					search = false,
-- 				},
-- 				modules = { -- List of various plugins and additional options
-- 					-- ...
-- 				},
-- 			},
-- 			palettes = {},
-- 			specs = {},
-- 			groups = {},
-- 		})
--
-- 		-- setup must be called before loading
-- 		vim.cmd('colorscheme carbonfox')
-- 	end,
-- } -- lazy

-- return {
-- 	'uloco/bluloco.nvim',
-- 	lazy = false,
-- 	priority = 1000,
-- 	dependencies = { 'rktjmp/lush.nvim' },
-- 	config = function()
-- 		require('bluloco').setup({
-- 			style = 'auto', -- "auto" | "dark" | "light"
-- 			transparent = true,
-- 			italics = false,
-- 			terminal = vim.fn.has('gui_running') == 1, -- bluoco colors are enabled in gui terminals per default.
-- 			guicursor = true,
-- 		})
--
-- 		vim.opt.termguicolors = true
-- 		vim.cmd('colorscheme bluloco')
-- 		-- your optional config goes here, see below.
-- 	end,
-- }
