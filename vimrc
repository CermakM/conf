" ---- Powerline setting
"
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

" ----  Custom settings 
"
set nocompatible
set term=xterm-256color

set incsearch
set scrolloff=2
set backspace=indent,eol,start
set autoread

" Enable syntax and plugins
syntax enable
filetype plugin on


" Braces autocomplete features
inoremap {<CR> {<CR>}<Esc>koi
inoremap {<Space> {   }<ESC>2hi
inoremap (<Space> (   )<ESC>2hi
inoremap [<Space> [   ]<ESC>2hi



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

