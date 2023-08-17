local attach_to_buffer = function(output_bufnr, pattern, command)
  -- run this when we write a file
  vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup('AndyFunctions', { clear = true }),
    -- files we want to match against
    pattern = pattern,
    -- things we want to run
    callback = function()
      -- spit out the information
      local append_data = function(_, data)
        if data then
          vim.api.nvim_buf_set_lines(output_bufnr, -1, -1, false, data)
        end
      end
      -- command we want to run, test suite?
      vim.fn.jobstart(command, {
        stdout_buffered = true,
        -- grab the data from the command and then add it
        on_stdout = append_data,
        on_stderr = append_data,
      })
    end
  })
end

vim.api.nvim_create_user_command('Example', function()
  print 'Example starts now'
  local pattern = '*.rb'
  -- local command = { "bundle", "exec", "rspec" }
  local command = { "ls" }
  attach_to_buffer(vim.api.nvim_get_current_buf(), pattern, command)
end, {})

-- https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/scratch/automagic/part3.lua
