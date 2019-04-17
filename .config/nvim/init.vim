"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " Show line numbers
set encoding=utf-8      " encoding used to display
set fileencoding=utf-8  " encoding written to files
set ttyfast             " faster redrawing
set lazyredraw          " only redraw when necessary
set cursorline          " highlight the current line
set showmatch           " highlight matching parentheses
set laststatus=2        " always show the status line
set visualbell          " cursor will blink on error
syntax on               " enable syntax highlighting
set nowrap              " don't wrap long lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

" nord-vim colorscheme
Plug 'arcticicestudio/nord-vim'

" neomake
Plug 'neomake/neomake'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" neomake async hooks
call neomake#configure#automake('w')

" Open NERDTree on startup
" autocmd vimenter * NERDTree
" NERDTree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree once a file is opened
let g:NERDTreeQuitOnOpen=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256 " 256 colors
colorscheme nord " set colorscheme


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" dont use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" copy and paste to/from vim and the clipboard
nnoremap <C-y> +y
vnoremap <C-y> +y
nnoremap <C-p> +P
vnoremap <C-p> +P

set clipboard=unnamed " access system clipboard


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab " 
set smarttab " checkout - :help smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

