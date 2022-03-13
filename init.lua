-- Basic settings
--  set hidden
--  set cmdheight=1
vim.g.mapleader = ' '
vim.o.background = "dark"
vim.g.fillchars = ' '
vim.g.noshowmode = true
vim.g.laststatus = 2
vim.g.nocompatible = true

local options = vim.opt
options.relativenumber = true
options.number = true
options.noswapfile = true
options.nobackup = true
options.expandtab = true
options.splitbelow = true
options.splitright = true
options.hidden = true

-- Add https://github.com/wbthomason/packer.nvim
