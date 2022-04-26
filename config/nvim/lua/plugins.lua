return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'dracula/vim', as = 'dracula'}

  use 'airblade/vim-gitgutter'

  use { 'fatih/vim-go',  run = ':GoUpdateBinaries' }

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

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use 'Yggdroot/indentline'

  use 'rust-lang/rust.vim'
end)
