call plug#begin('~/.vim/plugged')
" Status bar
Plug 'itchyny/lightline.vim'
" Syntax highlighting for tsx
Plug 'leafgarland/typescript-vim'
" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
" Fuzzy file search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Multiple select
Plug 'terryma/vim-multiple-cursors'
" File tree     
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

" All plugins must be added before this line!
" When you have a new plugin to install, source the .vimrc file again
" Then :PlugInstall to install plugins.

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

" HotKeys
map <C-o> :NERDTreeToggle<CR>

" Show line numbers
set number
