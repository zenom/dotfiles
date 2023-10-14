return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local status = require('nvim-spotify').status
    status:start()
    require('lualine').setup({
      sections = {
        lualine_x = {
          status.listen
        }
      },
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    })
  end
}
