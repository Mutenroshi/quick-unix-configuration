"
" Vim Configuration
"
" Made by     Muten
"
" File        .vimrc
"
" Started on  2011/09/24
" Last update 2020/05/18
"

" This configuration is volontary dummy

set encoding=utf8

syntax on           " syntax color
colorscheme desert

" backspace delete in insert mode
set backspace=indent,eol,start

set ai              " autoindent
set autoread        " automatically update file if modify (outside Vim)
set cin             " c-indent
set cursorline	    " underline the current line
set et              " expand tab
set hidden          " allow switching buffer without save
set hlsearch        " higlight matches when search
set nu              " line numbering
set shiftwidth=2
set softtabstop=2


highlight TrailingWhiteSpace term=inverse,bold cterm=bold ctermbg=red
highlight OverColLimit term=inverse,bold cterm=bold ctermbg=red

call matchadd("TrailingWhiteSpace", '\s\+$')
call matchadd("OverColLimit", '\%>79v.\+')


" MAPPINGS

" Switching buffer
map <S-LEFT> <ESC>:bp<RETURN>
map <S-RIGHT> <ESC>:bn<RETURN>

" Moving into splits
map <SPACE>k <C-w><up>
map <SPACE>j <C-w><down>
map <SPACE>l <C-w><right>
map <SPACE>h <C-w><left>

" Tab moving
map :ee :tabe
map <SPACE>- :tabp<RETURN>
map <SPACE>= :tabn<RETURN>

" Buffer separation management
map <C-LEFT> <C-W>>
map <C-RIGHT> <C-W><
map <C-UP> <C-W>+
map <C-DOWN> <C-W>-

" Remove highlighting
map -- :noh<RETURN>

" imapping for escape (in case of disfunction)
imap jj <ESC>

" Mappings for plow
"map :W :w<RETURN>
"map :Q :q<RETURN>
"map :X :x<RETURN>
