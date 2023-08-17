return {
  "NeogitOrg/neogit",
  config = function()
    vim.keymap.set('n', '<leader>gg', "<cmd>:Neogit<CR>", { desc = 'Git' })
    require("neogit").setup({})
  end,
}
