set undodir=~/.vim/undodir
set pastetoggle=<F10>
set undofile
set undolevels=1000
set undoreload=10000
set nocompatible
set autoread
" set spell
" set number
set nopaste
set autoindent
set expandtab
set copyindent
set tabstop=4
set shiftwidth=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set nofixendofline
set ttimeoutlen=0
set timeoutlen=1000

set history=10000
set ignorecase smartcase
set cursorline
set showcmd
set expandtab
colorscheme ron
syntax on
filetype plugin indent on

map Y ^vg_
map <F11> <ESC>:NERDTreeToggle<CR>
inoremap jh <Esc>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif

" My plugins
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'

call plug#end()


