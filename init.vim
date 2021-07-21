" Enabling  Auto Complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete


" Plugins vim-plug
call plug#begin('~/.vim/plugged')

    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'preservim/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-gitgutter'	
    Plug 'voldikss/vim-floaterm'
    Plug 'metakirby5/codi.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'vim-crystal/vim-crystal'
    Plug 'ryanoasis/vim-devicons'
    Plug 'terroo/vim-simple-emoji'
    Plug 'jiangmiao/auto-pairs'

call plug#end()

" Configurando lightline 
let g:lightline = {
  \     'colorscheme': 'wombat',
  \     'active': {
  \         'left': [['vimlogo','mode', 'paste'],  ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     },
  \
  \     'component': {
  \         'vimlogo': ''
  \     },
  \
  \ }

" Esquemas de cores.
colorscheme dracula

" YOUCOMPLETEME
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0

"Dicionário/Corretor para PT.
set spell spelllang=pt,en

" Configurações gerais de edição de texto. 
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



" Map de comandos.
map <C-p> :NERDTreeToggle<CR>

