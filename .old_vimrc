set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim' 
Plugin 'mattn/emmet-vim'
Plugin 'posva/vim-vue'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ycm-core/YouCompleteMe'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required

" Meus sets marotos 
command! W :w
set showmatch
set shiftwidth=4
set splitbelow splitright
set path=**
set softtabstop=4
set expandtab
set relativenumber
set hidden
set list
set clipboard=unnamedplus
set listchars=tab:▸\ ,eol:¬
set encoding=utf-8
set wrap

" meus key map
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <c-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap j gj
nnoremap k gk
map gst :vert Gstatus<CR>
map <C-s> :w<CR>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
map so :only<CR>
map <C-\> :noh<CR>
inoremap jj <ESC>
map fr :find<SPACE>
map ff :Ag<CR>
map <C-p> :Files<CR>
map ls :NERDTreeToggle<CR>
:nnoremap <C-n> :bprevious<CR>
:nnoremap <C-m> :bnext<CR>

" Color scheme (terminal)
syntax on
colorscheme gruvbox
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set rtp+=/usr/bin/fzf
