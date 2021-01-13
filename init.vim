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

call plug#end()

" Configurando lightline 
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     },
  \     
  \     'colorscheme': 'wombat',
  \ }

" Esquemas de cores.
colorscheme dracula

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


" Map de comandos.
map <C-p> :NERDTreeToggle<CR>
