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
options.termguicolors = true

vim.cmd('colorscheme gruvbox-material')
vim.notify = require("notify")

-- Add https://github.com/wbthomason/packer.nvim
require('plugins') --packer config
require('nvimtree-config')
require('notify-config')
require('lualine-config')
require('gitsigns-config')
require('toggleterm-config')

-- key bindings
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- telescope keys
vim.api.nvim_set_keymap('n', '<Leader>ff',  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg',  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb',  [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fh',  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })

