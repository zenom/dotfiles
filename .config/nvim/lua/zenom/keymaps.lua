-- Main Keymaps...
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- non plugin specific keymaps
vim.keymap.set("n", "<leader>x", vim.cmd.bd) -- close buffer
vim.keymap.set("n", "vv", vim.cmd.vsp) -- vertical split
vim.keymap.set("n", "ss", vim.cmd.sp) -- horizontal split
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make splits equal
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move lines up that are selected
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move lines down that are selected
vim.keymap.set("n", "J", "mzJ`z") -- keeps cursor when pulling line up

vim.keymap.set("x", "<leader>p", '"_dP') -- paste improvement

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)
