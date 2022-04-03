-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'sainnhe/gruvbox-material'

  use 'nvim-lua/plenary.nvim'   -- Notifications
  use 'nvim-lua/popup.nvim'     -- Notifications
  use 'rcarriga/nvim-notify'    -- Notifications

  use "akinsho/toggleterm.nvim" 

  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'renerocksai/telekasten.nvim',
    requires = {
      {
        'renerocksai/calendar-vim',
        'nvim-telescope/telescope-symbols.nvim',
        'mzlogin/vim-markdown-toc',
        'nvim-telescope/telescope-media-files.nvim'
      }
    }
  }
end)
