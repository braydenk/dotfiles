"""""""""""""""""""""""
" General
"""""""""""""""""""""""
set encoding=utf-8      " encoding used to display
set fileencoding=utf-8  " encoding written to files
set history=500         " how many lines vim will remember
set laststatus=2        " always show the status line
set visualbell          " cursor blinks on error

"""""""""""""""""""""""
" Plugins List
"""""""""""""""""""""""
call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle}

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""
" neomake async hooks
call neomake#configure#automake('w')

" open NERDTree on startup
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree once a file is opened.
let g:NERDTreeQuitOnOpen=1

" Nord in-built styles
let g:nord_italic=1
let g:nord_underline=1
let g:nord_italic_comments=1
let g:nord_uniform_status_line=1
"let g:nord_cursor_line_number_background=1
let g:nord_uniform_diff_background=1

"""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""
set wildmenu            " visual autocomplete when entering commands
set showmatch           " highlight matching brackets
set cursorline          " highlight current line
set nowrap              " don't wrap long lines
set number              " show line numbers
set showcmd             " show command in bottom bar
set lazyredraw          " only redraw when necessary
set ttyfast             " faster redrawing


"""""""""""""""""""""""
" Theme and Colours 
"""""""""""""""""""""""
" TODO: difference b/w syntax enable/on
syntax enable           " enable syntax highlighting
set t_Co=256            " enable 256 color palette

colorscheme nord        " looks good!
" set background=dark


"""""""""""""""""""""""
" Indentation Configuration
""""""""""""""""""""""""""""""
set expandtab           " use tabs instead of spaces
set smarttab            " be smart about your tabbing
set shiftwidth=4        " 1 tab == 4 spaces
set tabstop=4

set autoindent
set smartindent

filetype indent on      " indentation based upon filetype


""""""""""""""""""""""""""""""
" Keymappings
""""""""""""""""""""""""""""""

" turn off arrow keys
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

set clipboard=unnamed " access system clipboard<Paste>

