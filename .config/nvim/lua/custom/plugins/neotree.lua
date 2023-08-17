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
        position = 'left',
        width = 40,
        mappings = {
          ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
          ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
          ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
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
