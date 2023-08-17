return {
  "mhartington/formatter.nvim",
  config = function()
    vim.keymap.set('n', '<leader>ff', '<cmd>:Format<CR>', { desc = '[F]ormat [F]ile' })
    vim.keymap.set('n', '<leader>fr', "$v%lohc<CR><CR><Up><C-r>\"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>", { desc = '[F]ormat [R]uby' })
  end
}
