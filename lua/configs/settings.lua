vim.cmd([[
	set hidden
	set number
	set relativenumber
    set mouse=a
	set inccommand=split
	set nowrap
	set tabstop=4
	set expandtab
	set tabstop=4
	set shiftwidth=4
	set encoding=UTF-8
    set cursorline
    set incsearch    
    syntax on
]])

-- Dracula theme.
vim.o.termguicolors = true
--vim.g.dracula_transparent_bg = true
vim.cmd[[colorscheme dracula]]

-- Variavel utilizado no script do teroot
vim.cmd([[ let extension = expand('%:e') ]])

