return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>e', '<cmd>:Neotree toggle<CR>', { desc = 'Open Tree' })
    require('neo-tree').setup({
      enable_git_status = false,
      window = {
        position = 'bottom',
        width = 20,
        mappings = {
          ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem bottom', true) end,
          ['b'] = function() vim.api.nvim_exec('Neotree focus buffers float', true) end,
          ['g'] = function() vim.api.nvim_exec('Neotree focus git_status float', true) end,
        }
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        use_libuv_file_watcher = true,
      },
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(file_path)
            require('neo-tree.command').execute({ action = 'close' })
          end
        }
      }
    })
  end
}
