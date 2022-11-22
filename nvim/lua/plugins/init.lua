require('packer').startup(function(use)
-- Git integration
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'
-- Package manager
  use 'wbthomason/packer.nvim'
-- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'
-- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
-- Color schemes
  use 'folke/tokyonight.nvim' -- Pretty colours
  use 'morhetz/gruvbox' -- Pretty colours
-- Better syntax parsing
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
-- Fuzzy Search
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use "lukas-reineke/lsp-format.nvim"
-- File manager
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
-- Auto-comment
  use 'preservim/nerdcommenter'
-- Project manager
  use "ahmedkhalf/project.nvim"
end)

-- Configure language server support
require("plugins/lsp")

-- Configure project manager 
require("plugins/project")

-- Configure Fuzzy Search
require("plugins/telescope")

-- Configure Treesitter for fast syntax parsing 
require("plugins/treesitter")

-- Configure GitSigns 
require("plugins/gitsigns")

-- Configure file browser
require("plugins/nvim-tree")
