"" General configs
syntax on
let mapleader = " "
set formatoptions-=cro
set conceallevel=1
set hidden
set scrolloff=8
set noshowmode
set updatetime=50
set shortmess+=c
set encoding=utf8
set guicursor=
set noshowmatch
set nohlsearch
set smartcase
set incsearch
set autoindent noexpandtab tabstop=4 shiftwidth=4
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"" old tab
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set expandtab

"" Plugins
call plug#begin('~/.vim/plugged')

"" Util
Plug 'plasticboy/vim-markdown'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'lyuts/vim-rtags'
Plug 'jremmen/vim-ripgrep'

"" Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" Flutter
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'

"" Rust
Plug 'rust-lang/rust.vim'

"" Js
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'beautify-web/js-beautify'

"" Html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

"" Ui
Plug 'slim-template/vim-slim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sainnhe/gruvbox-material'

call plug#end()


"" Ui configs
set nu
set nowrap
set splitbelow
set noerrorbells
set termguicolors
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

let g:webdevicons_enable_nerdtree = 1
set list
set listchars=eol:⏎,tab:»·,trail:␠,nbsp:⎵

"" slim
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

"" Rg
if executable('rg')
	let g:rg_derive_root='true'
endif

"" Snipets
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"" NERDTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

"" Js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

"" Vimwiki
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"" Remaps.
inoremap jj <ESC>
nnoremap Y y$
noremap ç l
noremap l k
noremap k j
noremap j h
vnoremap K :m '>+1<CR>gv=gv
vnoremap L :m '<-2<CR>gv=gv
map gst :vert Gstatus<CR>
map so :only<CR>

"" Leader do
nmap <leader>j :wincmd h<CR>
nmap <leader>k :wincmd j<CR>
nmap <leader>l :wincmd k<CR>
nmap <leader>ç :wincmd l<CR>
nmap <leader>u :UndotreeShow<CR>
nmap <leader>s :w<CR>
nmap <leader>ss :x<CR>
nmap <leader>sa :xa<CR>
nmap <leader>qq :q!<CR>
nmap <leader>id G=gg<CR>
nmap <leader>tr :tabprevious<CR>
nmap <leader>tt :tabnext<CR>
nmap <leader>bx :bNext<CR>
nmap <leader>bz :bprevious<CR> 
nmap <leader>bb :b<space><tab>
nmap <leader>bf :bfirst<CR>
nmap <leader>ob A{}<esc>i<cr><esc>O
nmap <leader>ya ggVGy
nmap <leader>xa ggVGx
nmap <leader>\\ :noh<CR>
nmap <leader>ot :terminal<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>ww :VimwikiIndex<CR>
nmap <leader>fr :%s/
"" fzf
nmap <leader>fa :Rg<space>
nmap <leader>p :Files<CR>
"" dart
map <leader>df :DartFmt<CR>

"" Copy/Paste/Cut
if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
	vmap <C-x> :!pbcopy<CR>
	vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Coc
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"" Flutter/Dart configs 
let g:lsc_auto_map = v:true
let g:lsp_settings = {
			\ 'analysis-server-dart-snapshot': {
			\     'cmd': [
			\         '$DART_SDK/dart',
			\         '$DART_SDK/dart $DART_SDK/snapshots/analysis_server.dart.snapshot',
			\         '--lsp'
			\     ],
			\ },
			\ }

