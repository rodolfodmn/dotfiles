syntax on

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

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'beautify-web/js-beautify'
Plugin 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plugin 'ycm-core/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'lyuts/vim-rtags'
Plugin 'git@github.com:kien/ctrlp.vim.git'
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

" Remaps.  This is where the magic of vim happens
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>u :UndotreeShow<CR>
nmap <leader>nt :NERDTreeToggle<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
map gst :vert Gstatus<CR>
map so :only<CR>
map <C-\> :noh<CR>
inoremap jj <ESC>

" YCM
" The best part.
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
