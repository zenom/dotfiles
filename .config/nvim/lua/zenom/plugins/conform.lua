return {
  'stevearc/conform.nvim',
  keys = {
    { '<leader>f', function() require('conform').format() end }
  },
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
  end,
}
