local packer = require('packer')

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  },
})

return packer.startup(function()
  use('wbthomason/packer.nvim')

  use('Mofiqul/dracula.nvim')

  use('nvim-telescope/telescope-ui-select.nvim')

  use('ray-x/go.nvim')

  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

  use({
    'michaelb/sniprun',
    run = 'bash install.sh',
    config = function()
      require('sniprun').setup({
        display = { 'VirtualTextOk', 'LongTempFloatingWindow' },
      })
    end,
  })

  use('ncm2/float-preview.nvim')

  use('neovim/nvim-lspconfig')
  use({
    'sdclarke/rust-tools.nvim',
    config = function()
      require('rust-tools').setup({})
    end,
  })

  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')

  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets')

  use({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  })

  use('tmux-plugins/vim-tmux')

  use('tpope/vim-fugitive')
  use('tpope/vim-surround')

  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  })
  use('arkav/lualine-lsp-progress')

  use('lukas-reineke/indent-blankline.nvim')

  use('lewis6991/gitsigns.nvim')

  use('rust-lang/rust.vim')

  use('jose-elias-alvarez/null-ls.nvim')
end)
