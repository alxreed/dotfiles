set encoding=UTF-8
set number
set tabstop=2 
set expandtab
set autoindent 
set smartindent
set cindent
set wildmenu
set undofile

call plug#begin('~/.vim/plugged')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'scrooloose/nerdtree'
	Plug 'Raimondi/delimitMate'
  Plug 'vim-airline/vim-airline'      
  Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

let NERDTreeShowHidden=1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
let g:airline_extensions = ['branch', 'hunks', 'coc']
