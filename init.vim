:set termguicolors
:set hidden
:set noerrorbells
:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile
:set scrolloff=8
:set signcolumn=yes

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/popup.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()

lua <<EOF
    require("user.init")
EOF
:highlight Normal guibg=none
:highlight NonText guibg=none
