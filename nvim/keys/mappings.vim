" NAVIGATION
" br move
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>

nnoremap <silent> <leader>c :noh<cr>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" SCREEN
" ident
nmap <leader>id magg=G`a<CR>

" Use alt + hjkl to resize windows
nnoremap <M-k>    :resize -2<CR>
nnoremap <M-l>    :resize +2<CR>
nnoremap <M-j>    :vertical resize -2<CR>
nnoremap <M-ç>    :vertical resize +2<CR>

" ACTIONS
" delete buffer
nnoremap <leader>dd :bdelete<CR>

" copy all
nmap <leader>ya ggVGy
nmap <leader>xa ggVGx

" file replace
nmap <leader>fr :%s/

" find things
nnoremap <leader>g :Rg!<CR>
nnoremap <leader>f :Files!<CR>
map <leader>b :Buffers<CR>

" SNIPPETS
" open function
nmap <leader>fn A{}<esc>i<cr><esc>O

" CONFIG
" Better nav for omnicomplete
inoremap <expr> <c-k> ("\<C-n>")
inoremap <expr> <c-l> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS - all word
inoremap <c-u> <ESC>viwUi
nnoremap tu viwU<Esc>

" Ponto virgula
inoremap ;; <esc> A;<esc>
nnoremap ;; <esc> A;<esc>

" Alternate way to save
nnoremap <leader>w :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
nnoremap <silent> <leader><space> <Esc>:w<cr>
inoremap <silent> <leader><space> <Esc>:w<cr>
" Better tabbing
vnoremap < <gv
vnoremap > >gv

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
