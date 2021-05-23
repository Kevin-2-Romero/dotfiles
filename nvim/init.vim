set nocompatible

call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

set number

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4

"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

syntax on
set termguicolors
let g:onedark_terminal_italics = 1
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
