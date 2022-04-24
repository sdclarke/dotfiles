set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin()

Plug 'airblade/vim-gitgutter'

Plug 'dracula/vim', {'as': 'dracula'}

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'maralla/completor.vim'

Plug 'google/vim-jsonnet'

Plug 'junegunn/fzf', {'on': 'Files' }
Plug 'junegunn/fzf.vim', {'on': 'Files' }

Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

Plug 'ncm2/float-preview.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'sdclarke/rust-tools.nvim'

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tmux-plugins/vim-tmux'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Yggdroot/indentline'

Plug 'rust-lang/rust.vim'

call plug#end()
"source ~/.vimrc

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab number
set clipboard^=unnamed,unnamedplus laststatus=2 noshowmode undofile
set background=dark incsearch modeline shortmess+=c completeopt-=preview
set nofoldenable

highlight ColorColumn ctermbg=grey
highlight Search cterm=NONE ctermbg=blue ctermfg=grey

let NERDTreeNodeDelimiter = "\t"
let g:indentLine_enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:NERDCustomDelimiters = { 'arm': { 'left': ';'} }
let g:NERDAltDelims_c = 1
"let g:ycm_extra_conf_globlist = ['~/*']
let g:airline_powerline_fonts = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
"let g:deoplete#enable_at_startup = 1
let g:rustfmt_autosave = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_imports_mode = 'goimports'
let g:completor_filetype_map = {}
let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls -remote=auto'}
let g:completor_clang_binary = '/usr/bin/clang-11'

:lua require('rust-tools').setup({})

imap <C-e> <Esc>A
imap <C-a> <Esc>I
inoremap <silent><expr> <tab> pumvisible() ? "\<C-n>" : "\<tab>"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <cr> i<cr><Esc>
nnoremap <cr><cr> o<Esc>
nnoremap <S-t> 02d<right>
nnoremap <F9> :NERDTreeToggle<CR>
nnoremap <C-l> :Files<CR>
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle
nmap <C-y> <Plug>NERDCommenterAltDelims
nmap <F8> :TagbarOpenAutoClose<CR>

source /usr/share/doc/fzf/examples/fzf.vim

set tabpagemax=100
set tw=72
set fo-=l
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
syntax enable
set background=dark
colorscheme dracula
highlight Normal ctermbg=NONE
