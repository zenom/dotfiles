return {
  'KadoBOT/nvim-spotify',
  build = 'make',
  config = function()
    vim.keymap.set('n', '<leader>pn', '<Plug>(SpotifySkip)', { desc = '[P]lay [N]ext'})
    vim.keymap.set('n', '<leader>pa', '<Plug>(SpotifyPause)', { desc = '[P]lay P[a]use'})
    vim.keymap.set('n', '<leader>ps', ':Spotify<CR>', { desc = '[P]lay [S]potify'})
    vim.keymap.set('n', '<leader>pd', ':SpotifyDevices<CR>', { desc = '[P]layer [D]evices'})
    vim.keymap.set('n', '<leader>pp', '<Plug>(SpotifyPrev)', { desc = '[P]lay [P]revious'})
    vim.keymap.set('n', '<leader>ph', '<Plug>(SpotifyShuffle)', { desc = '[P]lay S[h]uffle'})
    require('nvim-spotify').setup({
      status = {
        update_interval = 5000,
        format = '%s %t by %a'
      }
    })
  end
}
