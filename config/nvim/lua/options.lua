vim.g.mapleader = " "
vim.g.airline_powerline_fonts = 1
vim.g.indentLine_enabled = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.rustfmt_autosave = 1
vim.g.go_def_mode='gopls'
vim.g.go_info_mode='gopls'
vim.g.go_imports_mode = 'goimports'
vim.opt.undofile = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.number = true
vim.opt.laststatus = 2
vim.opt.showmode = false
vim.opt.incsearch = true
vim.opt.modeline = true
vim.opt.foldenable = false
vim.opt.conceallevel = 0
vim.cmd([[set clipboard^=unnamed,unnamedplus]])
vim.cmd([[set shortmess+=c completeopt-=preview]])
vim.cmd([[let g:airline#extensions#tabline#enabled = 1]])
vim.cmd([[highlight ColorColumn ctermbg=grey]])
vim.cmd([[highlight Search cterm=NONE ctermbg=blue ctermfg=grey]])
vim.cmd("colorscheme dracula")
vim.cmd([[highlight Normal ctermbg=NONE]])
