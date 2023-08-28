return { 
  'weizheheng/ror.nvim',
  config = function()
    vim.keymap.set('n', '<leader>rr', require('ror.commands').list_commands, { desc = '[R]ails' })
  end
}
