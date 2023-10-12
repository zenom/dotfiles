return {
  "ThePrimeagen/harpoon",
  config = function()
    vim.keymap.set('n', '<leader>h', function() require('harpoon.ui').toggle_quick_menu() end, { desc = '[H]arpoon' })
    vim.keymap.set('n', '<leader>pm', function() require('harpoon.ui').nav_prev() end, { desc = '[P]revious [M]ark' })
    vim.keymap.set('n', '<leader>nm', function() require('harpoon.ui').nav_next() end, { desc = '[N]ext [M]ark' })
    vim.keymap.set('n', '<leader>1', function() require('harpoon.ui').nav_file(1) end, { desc = '[1]st Harpoon' })
    vim.keymap.set('n', '<leader>2', function() require('harpoon.ui').nav_file(2) end, { desc = '[2]nd Harpoon' })
    vim.keymap.set('n', '<leader>3', function() require('harpoon.ui').nav_file(3) end, { desc = '[3]rd Harpoon' })
    vim.keymap.set('n', '<leader>4', function() require('harpoon.ui').nav_file(4) end, { desc = '[4]th Harpoon' })
    vim.keymap.set('n', '<leader>5', function() require('harpoon.ui').nav_file(5) end, { desc = '[5]th Harpoon' })
    vim.keymap.set('n', '<leader>m', function() require('harpoon.mark').add_file() end, { desc = '[M]ark' })
    vim.keymap.set('n', '<leader>sm', '<cmd>:Telescope harpoon marks<CR>', { desc = '[S]earch [M]ark' })
    vim.keymap.set('n', ',,', '<cmd>:b#<CR>', { desc = 'Last buffer' })
  end
}
