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
]])

vim.o.clipboard = 'unnamedplus'

-- Tema de cores
vim.cmd.colorscheme "catppuccin-frappe"

-- Neovide config
if vim.g.neovide then
  vim.o.guifont = "Hack:h12"
  vim.g.neovide_scale_factor = 0.8

  vim.g.neovide_remember_window_size = true

vim.g.neovide_cursor_animation_length = 0.04
end

-- GLSL highlight
vim.cmd([[
  autocmd! BufNewFile,BufRead *.vs,*.fs,*.frag,*.vert set ft=glsl
  autocmd! BufNewFile,BufRead *.ejs set ft=html
]])

-- Blamer
vim.g.blamer_enabled = true
