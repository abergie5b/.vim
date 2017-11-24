autocmd vimenter * NERDTree

set encoding=utf8

call pathogen#infect()
call pathogen#helptags()

autocmd BufEnter * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

let g:syntastic_cpp_compiler_options = " -std=c++11"
let g:syntastic_python_checkers = ['python', 'pycodestyle']
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.readonly = ''

set cul
set number
set nowrap
set ruler
set title
set hlsearch
set incsearch
set autochdir
set cindent
set hidden
set expandtab
set tabstop=4
set shiftwidth=4

set foldmethod=indent
set foldlevel=99
nmap <space> za

nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-n> :nohl <CR>

vnoremap <F5> :!python <CR>

" Map to buttons
nnoremap <F8> :call TmuxResize('h', 1)<CR>
nnoremap <F9> :call TmuxResize('j', 1)<CR>
nnoremap <F10> :call TmuxResize('k', 1)<CR>
nnoremap <F11> :call TmuxResize('l', 1)<CR>

syntax on
colors koehler
filetype plugin indent on
