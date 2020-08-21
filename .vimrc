" editor
syntax on
set ruler
set number
set hlsearch
set backspace=indent,eol,start

inoremap jh <Esc>

" dracula theme 
"let g:dracula_colorterm = 0
"let g:dracula_italic = 0
"packadd! dracula

" gruvbox theme
let g:gruvbox_italic=0
let g:gruvbox_transparent_bg=1
colorscheme gruvbox

" display '\t' as 4-spaces, insert 4-spaces on tab
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype plugin indent on
