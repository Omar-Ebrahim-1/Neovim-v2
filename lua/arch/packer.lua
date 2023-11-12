vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'navarasu/onedark.nvim'
  use 'tpope/vim-fugitive'
  use 'github/copilot.vim'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'stevearc/dressing.nvim'
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

end)
