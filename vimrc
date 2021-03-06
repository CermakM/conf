" ---- Powerline setting
"
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

" Enagle thesaurus 
" set thesaurus+=/home/macermak/.vim/mthesaur.txt 

" ----  Custom settings 
"
" Set the leader key
let mapleader = ' '

" Disable scanning tags
set cpt-=t

set belloff=all
set noerrorbells
set nocompatible

" set term=xterm-256color

set incsearch
set scrolloff=2
set backspace=indent,eol,start

" Set auto refreshing of changes
set autoread
set showcmd
set showmatch

" Set color column (useful for pytoh den)
set colorcolumn=120
highlight ColorColumn ctermbg=darkred

" Show spaces and newlines
set list

" Enable syntax and plugins
syntax enable
filetype plugin on

" Enable folding
" set foldmethod=indent

noremap cp yap<S-}>p

" Braces autocomplete features
"inoremap {<CR> {<CR>}<Esc>ko
inoremap {<Space> {}<ESC>i
inoremap (<Space> ()<ESC>i
inoremap [<Space> []<ESC>i

" Shortcut for overwriting files with root privileges
cnoremap w!! w !sudo tee % > /dev/null 

" Finding files
" - search down into subfolder
set path+=**
" - display matching files when tab completing
set wildmenu

set tabstop=4
set shiftwidth=4


" ----  Plugin management 
"
call plug#begin()
"Plug 'tpope/vim-sensible'
"Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'epeli/slimux'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
" colorschemes
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'phanviet/vim-monokai-pro'
"Plug 'ron89/thesaurus_query.vim'
call plug#end()

" colorscheme
" set termguicolors
" colorscheme sublimemonokai
colorscheme monokai

" NERDTree
" autocmd vimenter * NERDTree
nmap <Leader>T :NERDTreeToggle<CR>

"
" Slimux key bindings
let g:slimux_python_ipython = 1

map <Leader><C-m> :SlimuxREPLSendLine<CR>
vmap <Leader><C-m> :SlimuxREPLSendSelection<CR>


" Disable scanning included files
setglobal complete-=i

" Syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

" Errors jumping
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprev<CR>

" Cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set guicursor+=n-v-c:blinkon0

