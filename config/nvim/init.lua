require('utils')
require('plugins')
require('lsp')
require('treesitter')
require('rust-tools').setup({})
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
vim.g.mapleader = " "
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
vim.cmd([[set clipboard^=unnamed,unnamedplus]])
vim.cmd([[set shortmess+=c completeopt-=preview]])
vim.cmd([[let g:airline#extensions#tabline#enabled = 1]])
vim.cmd([[highlight ColorColumn ctermbg=grey]])
vim.cmd([[highlight Search cterm=NONE ctermbg=blue ctermfg=grey]])
vim.cmd("colorscheme dracula")
vim.cmd([[highlight Normal ctermbg=NONE]])
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")
nmap("<cr>", "i<cr><Esc>")
nmap("<cr><cr>", "o<Esc>")
nmap("<S-t>", "02d<right>")
nmap("<F9>", ":NERDTreeToggle<CR>")
nmap("<F5>", [[:let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>]])
nmap("<C-_>", "<Plug>NERDCommenterToggle")
map("v", "<C-_>", "<Plug>NERDCommenterToggle")
nmap("<C-y>", "<Plug>NERDCommenterAltDelims")
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>ft", "<cmd>Telescope treesitter<cr>")
nmap("<leader>gd", "<cmd>Telescope lsp_definitions<cr>")
nmap("<leader>fr", "<cmd>Telescope builtin<cr>")
nmap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
--set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab number
--set nofoldenable
--highlight ColorColumn ctermbg=grey
--highlight Search cterm=NONE ctermbg=blue ctermfg=grey
--]])
