" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'

" Initialize plugin system
call plug#end()
filetype plugin on

"
" THEMING
"
syntax on
colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

set noshowmode
set number

"
" Syntax
"
au BufRead,BufNewFile *.asm set filetype=ia64
au BufRead,BufNewFile *.s set filetype=ia64
set tabstop=4
set shiftwidth=4


"
" System
"
set clipboard=unnamedplus
