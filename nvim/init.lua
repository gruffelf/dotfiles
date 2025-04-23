local vim = vim
local Plug = vim.fn['plug#']

-- vim-plug init
vim.call('plug#begin')

Plug('tpope/vim-sensible')
Plug('olimorris/onedarkpro.nvim')

vim.call('plug#end')

-- Add line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Fix tab indentation width
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- Global clipboard
vim.opt.clipboard = "unnamedplus"

-- onedarkpro theme
require("onedarkpro").setup({
	options = {
		transparency = true,
	}
})

vim.cmd('silent! colorscheme onedark')
