vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'stevearc/dressing.nvim'
  use 'navarasu/onedark.nvim'
  use 'tpope/vim-fugitive'
  use 'github/copilot.vim'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'numToStr/Comment.nvim'
  use 'kylechui/nvim-surround'
  use 'folke/which-key.nvim'
  use 'lervag/vimtex'
  use 'norcalli/nvim-colorizer.lua'
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-refactor'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

end)
