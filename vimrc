syntax on
set guifont=DroidSansMono\ Nerd\ Font\ 11
set encoding=utf8
:set cindent shiftwidth=2
" indent depends on filetype
:filetype indent on
:filetype plugin on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set splitbelow
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"slim
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugged')

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'slim-template/vim-slim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"flutter
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'
Plugin 'dart-lang/dart-vim-plugin'

"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'beautify-web/js-beautify'
Plugin 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plugin 'ycm-core/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'lyuts/vim-rtags'
Plugin 'mbbill/undotree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()

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
nmap <leader>se :xa<CR>
nmap <leader>qq :q!<CR>
nmap <leader>id :G=gg<CR>
nmap <leader>tr :tabprevious<CR>
nmap <leader>tt :tabnext<CR>
nmap <leader>bn :bNext<CR>
nmap <leader>bb :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>ot :terminal<CR>
nmap <leader>nt :NERDTreeToggle<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
map gst :vert Gstatus<CR>
map so :only<CR>
map <C-\> :noh<CR>
inoremap jj <ESC>

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

" YCM
" The best part.
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
