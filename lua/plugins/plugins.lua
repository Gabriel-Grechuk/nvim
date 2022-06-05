vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Startup fast.
  use 'lewis6991/impatient.nvim'

  -- Dracula theme.
  use 'Mofiqul/dracula.nvim'

  -- Facilitaidentificar a identação do arquivo.
  use 'lukas-reineke/indent-blankline.nvim'

  -- Facilita modificar chaves e criação de string.
  use 'tpope/vim-surround'

  -- Mostra as cores que eu escrever. Ex: #03f0fc
  use 'norcalli/nvim-colorizer.lua'

  -- Gera pares de chaves, parenteses, aspas etc, automaticamente.
  use 'windwp/nvim-autopairs'

  -- Facilita a criação de HTML e XML.
  use 'mattn/emmet-vim'

  -- Terminal integrado para facilitar.
  use 'voldikss/vim-floaterm'

  -- Explorador de arquivos.
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Virtual line para delimitar códigos na linha 80.
  use 'lukas-reineke/virt-column.nvim'

  -- Mais cores.
  use 'nvim-treesitter/nvim-treesitter'

  -- Marcando presença.
  use 'andweeb/presence.nvim'

  -- Cursores multiplos.
  use 'mg979/vim-visual-multi'

  -- 
  -- use 'APZelos/blamer.nvim'

  -- Autoformat
  use 'sbdchd/neoformat'

  -- Comentar automaticamente.  
  use 'preservim/nerdcommenter'

  -- Telescope.
  use 'nvim-telescope/telescope.nvim'

  -- Highlight de TODOs e outras mensagens.
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- Visualizadoer de difs git.
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- Linha de status.
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- LPS.
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'tami5/lspsaga.nvim'
  use 'folke/lsp-colors.nvim'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'nvim-lua/lsp-status.nvim'
end)
