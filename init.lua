-- Basic settings
--  set hidden
--  set cmdheight=1
vim.g.mapleader = ' '
vim.o.background = "dark"
vim.g.fillchars = ' '
vim.g.noshowmode = true
vim.g.laststatus = 2
vim.g.nocompatible = true
vim.g.noswapfile = true
vim.g.nobackup = true
vim.g.mapleader = " " 

local options = vim.opt
options.relativenumber = true
options.number = true
options.expandtab = true
options.splitbelow = true
options.splitright = true
options.hidden = true
options.background = 'dark'

vim.cmd('colorscheme gruvbox-material')

-- Add https://github.com/wbthomason/packer.nvim
require('plugins') --packer config
require('nvimtree-config')

-- key bindings
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

