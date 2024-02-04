-- return {
-- 	'folke/tokyonight.nvim',
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		local tokyo = require('tokyonight')
-- 		tokyo.setup({
-- 			transparent = true,
-- 			style = 'storm',
-- 			styles = {
-- 				sidebars = 'transparent',
-- 				floats = 'transparent',
-- 			},
-- 			on_highlights = function(hl, c)
-- 				local prompt = '#2d3149'
-- 				hl.TelescopeNormal = {
-- 					bg = c.bg_dark,
-- 					fg = c.fg_dark,
-- 				}
-- 				hl.TelescopeBorder = {
-- 					bg = c.bg_dark,
-- 					fg = c.bg_dark,
-- 				}
-- 				hl.TelescopePromptNormal = {
-- 					bg = prompt,
-- 				}
-- 				hl.TelescopePromptBorder = {
-- 					bg = prompt,
-- 					fg = prompt,
-- 				}
-- 				hl.TelescopePromptTitle = {
-- 					bg = prompt,
-- 					fg = prompt,
-- 				}
-- 				hl.TelescopePreviewTitle = {
-- 					bg = c.bg_dark,
-- 					fg = c.bg_dark,
-- 				}
-- 				hl.TelescopeResultsTitle = {
-- 					bg = c.bg_dark,
-- 					fg = c.bg_dark,
-- 				}
-- 			end,
-- 			on_colors = function(colors)
-- 				colors.bg_statusline = 'NONE'
-- 			end,
-- 		})
-- 		vim.cmd([[colorscheme tokyonight]])
-- 	end,
-- }
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = false, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { "italic" }, -- Change the style of comments
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            dashboard = true,
            neogit = true,
            harpoon = true,
            mini = {
                enabled = true,
                indentscope_color = "",
            },
            telescope = { enabled = true }
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
    })
    vim.cmd.colorscheme "catppuccin"
  end
}
