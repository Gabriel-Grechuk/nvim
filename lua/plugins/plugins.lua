vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

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
end)

