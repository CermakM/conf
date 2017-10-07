" ---- Powerline setting
"
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

" Enagle thesaurus 
" set thesaurus+=/home/macermak/.vim/mthesaur.txt 

" ----  Custom settings 
"
set nocompatible
set term=xterm-256color

set incsearch
set scrolloff=2
set backspace=indent,eol,start
set autoread
set showcmd
set showmatch

" Set color column (useful for pytoh den)
set colorcolumn=80
highlight ColorColumn ctermbg=darkred

" Show spaces and newlines
set list

" Enable syntax and plugins
syntax enable
filetype plugin on

" Enable folding
" set foldmethod=indent

" Braces autocomplete features
inoremap {<CR> {<CR>}<Esc>ko
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
"Plug 'scrooloose/nerdtree'
"Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ron89/thesaurus_query.vim'
call plug#end()

" Syntastic settings
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

" Errors jumping
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprev<CR>
