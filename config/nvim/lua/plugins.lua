return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {'dracula/vim', as = 'dracula'}

  use 'nvim-telescope/telescope-ui-select.nvim'
  --use 'airblade/vim-gitgutter'

  --use { 'fatih/vim-go',  run = ':GoUpdateBinaries' }
  use 'ray-x/go.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'ncm2/float-preview.nvim'

  use 'neovim/nvim-lspconfig'
  use 'sdclarke/rust-tools.nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'scrooloose/nerdcommenter'

  use 'tmux-plugins/vim-tmux'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  --use 'vim-airline/vim-airline'
  --use 'vim-airline/vim-airline-themes'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'arkav/lualine-lsp-progress'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'lewis6991/gitsigns.nvim'

  use 'rust-lang/rust.vim'
end)
