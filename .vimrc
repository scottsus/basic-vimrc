" Syntax highlighting
syntax on

" Set line numbers
set number

" Disable annoying vim bells 🤬
set noerrorbells
set vb t_vb=

" Tab controls
set tabstop=2
set shiftwidth=2
set expandtab

" vim plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'

call plug#end()

" Colorschemes
set termguicolors
colorscheme sonokai
