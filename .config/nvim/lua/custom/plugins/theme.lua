return {
  'bluz71/vim-nightfly-colors',
  lazy = false,
  enabled = true,
  config = function()
    vim.g.nightflyItalics = true
    vim.g.nightflyCursorColor = true
    vim.g.nightflyUndercurls = true
    vim.g.nightflyUnderlineMatchParen = true
    vim.g.nightflyTransparent = true
    vim.cmd.colorscheme 'nightfly'
  end
}
