:set mouse=a
:set termguicolors
:set relativenumber
:set nu
:set smartindent
:set shiftwidth=4


call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/popup.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()

lua <<EOF
    require("user.lsp")
    require("user.cmp")
EOF
:colorscheme gruvbox
:set completeopt=menu,menuone,noselect
