" map kj as escape, 200ms timeout
inoremap kj  <Esc>
set timeoutlen=200

" editor
syntax on
set ruler
set number
set hlsearch
set cursorline
set backspace=indent,eol,start

" display '\t' as 2-spaces, insert 2-spaces on tab
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype plugin indent on

" netrw configuration
let g:netrw_liststyle=3

colorscheme codedark
