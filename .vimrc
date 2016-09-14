call pathogen#infect()
call pathogen#helptags()

autocmd BufEnter * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

let g:syntastic_python_checkers = ['python', 'pycodestyle']

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
nnoremap <C-Left> :call TmuxResize('h', 1)<CR>
nnoremap <C-Down> :call TmuxResize('j', 1)<CR>
nnoremap <C-Up> :call TmuxResize('k', 1)<CR>
nnoremap <C-Right> :call TmuxResize('l', 1)<CR>

syntax on
"colors evening
filetype plugin indent on
