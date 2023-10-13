-- run linter on files.
vim.api.nvim_create_autocmd({ 'InsertLeave', 'BufWritePost' }, {
  callback = function()
    local lint_status, lint = pcall(require, 'lint')
    if lint_status then
      lint.try_lint()
    end
  end,
})

-- run formatter on files
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(args)
    if vim.bo.filetype == 'eruby' then
      return
    end
    require('conform').format { bufnr = args.buf }
  end,
})
