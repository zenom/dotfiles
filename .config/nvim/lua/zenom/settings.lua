-- Neovim settings.
vim.o.termguicolors = true
vim.o.swapfile = false
vim.o.colorcolumn = "80"
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.hlsearch = false
vim.o.wrap = false
vim.wo.signcolumn = "yes"
vim.o.cursorline = true

vim.o.incsearch = true
vim.opt.isfname:append("@-@")
vim.wo.number = true
vim.o.mouse = "a"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 50
vim.o.timeoutlen = 300
vim.o.completeopt = "menuone,noselect"
vim.o.scrolloff = 8
vim.o.clipboard = "unnamedplus"
