" map kj as escape, 500ms timeout
inoremap kj  <Esc>
set timeoutlen=500

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

" gruvbox theme
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_transparent_bg=1
