return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      transparent_background = true,
      term_colors = true,
      integrations = {
        gitsigns = true,
        neogit = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      }
    })
    vim.cmd.colorscheme 'catppuccin'
  end
}
