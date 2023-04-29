local cmd = vim.cmd

cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'sainnhe/sonokai'
  use 'morhetz/gruvbox'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'rstacruz/vim-closer'
    use 'tpope/vim-endwise'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'norcalli/nvim-colorizer.lua'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'michaeljsmith/vim-indent-object'

    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    -- my monitor is not that big so this is not very useful
    -- use 'spolu/dwm.vim'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'ranjithshegde/ccls.nvim'

    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'folke/neodev.nvim'
    use 'ldelossa/nvim-dap-projects'

    -- this is not even 200 lines omg
end)
