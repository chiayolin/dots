return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lsp / completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- theme / highlighting
  use 'joshdick/onedark.vim'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'leafgarland/typescript-vim'
  use 'prisma/vim-prisma'

  -- fuzzy search
  use { 'junegunn/fzf', run = function()
    vim.fn['fzf#install']() end }
  use 'junegunn/fzf.vim'
end)

