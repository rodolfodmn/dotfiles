syntax on
set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode

" Give more space for displaying messages.
set cmdheight=2
" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=50
" " Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set encoding=utf8
set splitbelow
set noerrorbells
"slim
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'slim-template/vim-slim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'

"flutter
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'

"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'beautify-web/js-beautify'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Ui
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:webdevicons_enable_nerdtree = 1

"Js
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

set conceallevel=1

" Remaps.  This is where the magic of vim happens
inoremap jj <ESC>
nnoremap Y y$
noremap ç l
noremap l k
noremap k j
noremap j h
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
nmap <leader>fr :%s/
vnoremap K :m '>+1<CR>gv=gv
vnoremap L :m '<-2<CR>gv=gv
map gst :vert Gstatus<CR>
map so :only<CR>

"" Coc
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"fzf
nmap <leader>fa :Rg<space>
nmap <leader>p :Files<CR>

"flutter dart 
map <leader>df :DartFmt<CR>
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

