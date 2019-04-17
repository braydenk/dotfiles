"""""""""""""""""""""
" General Settings
"""""""""""""""""""""

set encoding=utf-8	" The encoding displayed
set fileencoding=utf-8	" The encoding written to a file
syntax on		" Enable syntax highlighting
set ttyfast		" Faster redrawing
set lazyredraw		" Only redraw when necessary
set cursorline		" Find the current line quickly


""""""""""""""""""""
" Plugins List
""""""""""""""""""""

call plug#begin()

" nord-vim colorscheme
Plug 'arcticicestudio/nord-vim'

call plug#end()


"""""""""""""""""""""""
" Plugin Configurations
""""""""""""""""""""""


"""""""""""""""""""""""
" Visual Configurations
""""""""""""""""""""""""

" 256 colors
set t_Co=256

" set colorscheme
colorscheme nord

" long lines stay on the same line
set nowrap

" line numbers
set relativenumber
set number

" always show the status line
set laststatus=2


""""""""""""""""""""""""""""""
" Keymappings
"""""""""""""""""""""""""""""









