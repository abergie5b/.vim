call pathogen#infect()
call pathogen#helptags()

autocmd FileType python set omnifunc=pythoncomplete#Complete

"Tagbar
autocmd BufEnter * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

"Syntax
let g:syntastic_python_checkers = ["python", "pycodestyle"]
let g:syntastic_python_pycodestyle_exec = "/home/dpassarelli/.vim/bundle/pycodestyle/pycodestyle.py"

set title
set ruler
set number
set hidden
set nowrap
set hlsearch
set incsearch
set showmatch
set autochdir
set cursorline
set foldmethod=indent
set foldlevel=99
syntax on
color evening

"Python Config
set shiftwidth=4
set softtabstop=4
set tabstop=8
set textwidth=79
set autoindent

"Mappings
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

noremap <space> za

noremap <C-n> :nohl <CR>
inoremap <C-e> <C-o>$

vnoremap <Tab> > <CR>
vnoremap <S-Tab> < <CR>

filetype plugin indent on
