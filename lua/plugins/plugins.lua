vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'terroo/vim-simple-emoji'
    use 'Mofiqul/dracula.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'tamton-aquib/staline.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'tpope/vim-surround'
    use 'norcalli/nvim-colorizer.lua'
    use 'windwp/nvim-autopairs'
    use 'mattn/emmet-vim'
end)

