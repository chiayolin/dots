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

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" color scheme
if (has("termguicolors"))
  " tmux color hack from onehalf theme
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme onedark

" netrw configuration
let g:netrw_liststyle=3
