return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        ruby = { 'rufo' }, --rubocop, standardrb, rufo
        eruby = { 'erb_format' },
        lua = { 'stylua' },
        javascript = { 'prettier' },
        css = { 'prettier' },
        scss = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        html = { 'htmlbeautifier' },
      },
    }
    vim.keymap.set('n', '<leader>ff', function()
      require('conform').format()
    end, { desc = '[F]ormat [F]ile' })
  end,
}
