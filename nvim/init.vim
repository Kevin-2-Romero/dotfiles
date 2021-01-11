call plug#begin(stdpath('data') . '/plugged')

Plug 'dracula/vim', {'as': 'dracula'}
Plug 'franbach/miramare'
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/suda.vim'

call plug#end()

set termguicolors
syntax on

let g:miramare_transparent_background = 1
let g:miramare_enable_bold = 1
let g:dracula_colorterm = 0

set background=light

colorscheme dracula
let g:lightline = {
	\ 'colorscheme': 'dracula',
	\ }
cmap w!! SudaWrite
