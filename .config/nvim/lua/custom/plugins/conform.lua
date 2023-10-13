return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        ruby = { 'rufo' }, --rubocop, standardrb, rufo
        eruby = { 'erb_format' },
        lua = { 'stylua' },
        javascript = { { 'prettierd', 'prettier' } },
        css = { { 'prettierd', 'prettier' } },
        scss = { { 'prettierd', 'prettier' } },
        json = { { 'prettierd', 'prettier' } },
        yaml = { { 'prettierd', 'prettier' } },
        markdown = { { 'prettierd', 'prettier' } },
        html = { 'htmlbeautifier' },
      },
    }
  end,
}
