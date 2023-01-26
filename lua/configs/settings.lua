-- Configurações gerais do nvim.
vim.cmd([[
  syntax on
  set encoding=UTF-8
  set hidden
  set inccommand=split
  set nowrap
  set incsearch

  set number
  set relativenumber
  set cursorline
  set scrolloff=10
  set colorcolumn=80

  set tabstop=2
  set expandtab
  set shiftwidth=2
  set so=9999
]])

vim.o.clipboard = 'unnamedplus'

-- Tema de cores
vim.cmd[[colorscheme dracula]]  

