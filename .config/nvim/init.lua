-- source files
require('plugins')
require('lsp')

-- map kj as <Esc>, with 200ms timeout
vim.opt.timeoutlen = 200
--vim.api.nvim_set_keymap(
--  'i',
--  'kj',
--  '<Esc>',
--  { noremap = true }
--)

-- map <Space><Space> to :Files
vim.api.nvim_set_keymap(
  'n',
  '<Space><Space>',
  ':Files<CR>',
  { noremap = true }
)

-- editor common sense
vim.opt.wrap = false
vim.opt.ruler = true
vim.opt.number = true
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.colorcolumn = '81'
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- display '\t' as 2 spaces, insert spaces on tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- configure colorscheme
vim.opt.termguicolors = true
vim.cmd('colorscheme onedark')

vim.cmd('let g:airline#extensions#tabline#enabled = 1')
vim.cmd("let g:airline#extensions#tabline#formatter = 'unique_tail_improved'")

-- netrw configuration
vim.g.netrw_liststyle = 3

