call plug#begin('~/.vim/plugged')
" Status bar
Plug 'itchyny/lightline.vim'
" Syntax highlighting for tsx
Plug 'leafgarland/typescript-vim'
" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

" All plugins must be added before this line!

" Syntax
syntax on
filetype plugin indent on

" Color Scheme
set background=dark
colorscheme palenight

" Configure Status Bar
set laststatus=2
set noshowmode
let g:lightline = {
  \'colorscheme':'wombat',
  \}

" Backspace normal functionality
set backspace=indent,eol,start
