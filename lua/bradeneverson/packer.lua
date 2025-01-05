-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use {
    'KadoBOT/nvim-spotify',
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
        local spotify = require'nvim-spotify'

        spotify.setup {
            status = {
                update_interval = 10000, -- the interval (ms) to check for what's currently playing
                format = '%s %t by %a' -- spotify-tui --format argument
            }
        }
    end,
    run = 'make'
}

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {
  "~/source/lua/typebeat.nvim",
  as = "typebeat",
  config = function()
    require("typebeat")
  end
}

use({
	'rebelot/kanagawa.nvim',
	as = 'kanagawa',
    --config = function()
		--vim.cmd('colorscheme kanagawa')
	--end
})

use("ThePrimeagen/vim-be-good")

use({
	'vague2k/vague.nvim',
	as = 'vague',
    config = function()
		vim.cmd('colorscheme vague')
	end
})

use('cocopon/iceberg.vim')
use('OmniSharp/omnisharp-vim')
use({'catppuccin/nvim', as = 'catppucin'})
use 'AlexvZyl/nordic.nvim'
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')

use 'neovim/nvim-lspconfig'
use 'simrat39/rust-tools.nvim'

-- Debugging
use 'nvim-lua/plenary.nvim'
use 'mfussenegger/nvim-dap'

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use('xiyaowong/transparent.nvim')

end)

