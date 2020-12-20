" editor
syntax on
set ruler
set number
set hlsearch
set backspace=indent,eol,start

inoremap jh <Esc>

" gruvbox theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" display '\t' as 2-spaces, insert 2-spaces on tab
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype plugin indent on
