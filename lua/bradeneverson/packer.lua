-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use { "akinsho/toggleterm.nvim", tag = '*' }

use 'Civitasv/cmake-tools.nvim'

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use("ThePrimeagen/vim-be-good")

use({
	'vague2k/vague.nvim',
	as = 'vague',
    config = function()
		vim.cmd('colorscheme vague')
	end
})

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')

use 'neovim/nvim-lspconfig'
use 'simrat39/rust-tools.nvim'

use 'nvim-lua/plenary.nvim'
use 'mfussenegger/nvim-dap'

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

use('xiyaowong/transparent.nvim')

end)
