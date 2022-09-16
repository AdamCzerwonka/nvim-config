
return require('packer').startup(function(use)
    -- Let packer manage itself
    use 'wbthomason/packer.nvim'

    use 'vim-airline/vim-airline'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'}
        }
    }

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind.nvim'
    
    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({with_sync=true}) end,
    }

    -- Themes
    use 'gruvbox-community/gruvbox'
    use 'sainnhe/everforest'
    use 'folke/tokyonight.nvim' 


end)
