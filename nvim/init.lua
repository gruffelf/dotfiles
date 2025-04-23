local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('tpope/vim-sensible')
Plug('olimorris/onedarkpro.nvim')

vim.call('plug#end')

vim.opt.number = true
vim.opt.relativenumber = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2

require("onedarkpro").setup({
	options = {
		transparency = true,
	}
})

vim.cmd('silent! colorscheme onedark')
