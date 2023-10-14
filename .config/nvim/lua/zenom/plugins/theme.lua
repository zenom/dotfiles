return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    require('catppuccin').setup({
      transparent_background = true,
      term_colors = true,
      integrations = {
        gitsigns = true,
        neogit = true,
        nvimtree = true,
        telescope = {
          enabled = true,
        },
        treesitter = true,
        -- which_key = true,
      }
    })
    vim.cmd.colorscheme 'catppuccin'
  end
}
