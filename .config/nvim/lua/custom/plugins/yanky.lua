return {
  "gbprod/yanky.nvim",
  dependencies = {
    "kkharji/sqlite.lua"
  },
  config = function()
    vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)', {})
    vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)', {})
    vim.keymap.set({ 'n', 'x' }, 'y', '<Plug>(YankyYank)', {})
    require('yanky').setup({})
  end
}
