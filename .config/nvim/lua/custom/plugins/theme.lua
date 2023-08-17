return {
  'bluz71/vim-nightfly-colors',
  config = function()
    vim.g.nightflyItalics = true
    vim.g.nightflyCursorColor = true
    vim.g.nightflyUndercurls = true
    vim.g.nightflyUnderlineMatchParen = true
    vim.cmd.colorscheme 'nightfly'
  end
}
