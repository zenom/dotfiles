return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>ff', function() require('telescope.builtin').find_files() end },
    { '<leader>fb', function() require('telescope.builtin').buffers() end },
    { '<leader>fg', function() require('telescope.builtin').live_grep() end },
    { '<leader>qq', function() require('telescope.builtin').quickfix() end },
    { '<leader>fd', function() require('telescope.builtin').diagnostics() end },
    { '<leader>rm', function()
      require('telescope.builtin').find_files({
	search_dirs = {'./app/models'},
	theme = 'dropdown'
      })
    end},
    { '<leader>rs', function()
      require('telescope.builtin').find_files({
	search_dirs = {'./app/services'},
	theme = 'dropdown'
      })
    end},
    { '<leader>rc', function()
      require('telescope.builtin').find_files({
	search_dirs = {'./app/controllers'},
	theme = 'dropdown'
      })
    end},
    { '<leader>rv', function()
      require('telescope.builtin').find_files({
	search_dirs = {'./app/views'},
	theme = 'dropdown'
      })
    end},
  },
}
