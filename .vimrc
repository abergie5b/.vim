call pathogen#infect()
call pathogen#helptags()

autocmd BufEnter * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

let g:syntastic_python_checkers = ['pyflakes', 'python', 'pycodestyle', 'pep8']

set cul
set number
set nowrap
set ruler
set title
set hlsearch
set incsearch
set autochdir
set autoindent
set hidden
set shiftwidth=4

set foldmethod=indent
set foldlevel=99
nmap <space> za

nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

vnoremap <F5> :!python <CR>

syntax on
colors industry
filetype plugin indent on
