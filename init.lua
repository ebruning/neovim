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

-- plugins
require('plugins') --packer config
require('nvimtree-config')
require('notify-config')
require('lualine-config')
require('gitsigns-config')
require('toggleterm-config')
require('telekasten-config')

require'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
}

-- key bindings
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- telescope keys
vim.api.nvim_set_keymap('n', '<Leader>ff',  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg',  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb',  [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fh',  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })

-- telekasten keys
vim.api.nvim_set_keymap('n', '<leader>zf', [[<Cmd>lua require('telekasten').find_notes()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zd', [[<Cmd>lua require('telekasten').find_daily_notes()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zg', [[<Cmd>lua require('telekasten').search_notes()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zz', [[<Cmd>lua require('telekasten').follow_link()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zT', [[<Cmd>lua require('telekasten').goto_today()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zW', [[<Cmd>lua require('telekasten').goto_thisweek()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zw', [[<Cmd>lua require('telekasten').find_weekly_notes()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zn', [[<Cmd>lua require('telekasten').new_note()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zN', [[<Cmd>lua require('telekasten').new_templated_note()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zy', [[<Cmd>lua require('telekasten').yank_notelink()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zc', [[<Cmd>lua require('telekasten').show_calendar()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zC', [[<Cmd>CalendarT<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zi', [[<Cmd>lua require('telekasten').paste_img_and_link()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zt', [[<Cmd>lua require('telekasten').toggle_todo()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zb', [[<Cmd>lua require('telekasten').show_backlinks()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zF', [[<Cmd>lua require('telekasten').find_friends()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zI', [[<Cmd>lua require('telekasten').insert_img_link({ i=true })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zp', [[<Cmd>lua require('telekasten').preview_img()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zm', [[<Cmd>lua require('telekasten').browse_media()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>za', [[<Cmd>lua require('telekasten').show_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>#', [[<Cmd>lua require('telekasten').show_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zr', [[<Cmd>lua require('telekasten').rename_note()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>z', [[<Cmd>lua require('telekasten').panel()<CR>]], { noremap = true, silent = true })

