autocmd vimenter * NERDTree

ret rtp+=$HOME/.vim/bundle/vlime/vim
set rtp+=$HOME/.vim/bundle/paredit/plugin

let g:vlime_cl_impl='sbcl'

set encoding=utf-8

call pathogen#infect()
call pathogen#helptags()

autocmd BufEnter * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang.so.1'

let g:syntastic_cpp_compiler_options = " -std=c++11"
let g:syntastic_python_checkers = ['python3']

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.readonly = ''
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

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
colors elflord
filetype plugin indent on


" JAVA AUTOCOMPLETE "
"
"
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:JavaComplete_UseFQN = 1
"let g:JavaComplete_ClosingBrace = 1
"let g:JavaComplete_SourcesPath = "/home/andrew/Source/jPaint/*"
"let g:deoplete#enable_at_startup = 1

"nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"
"nmap <F5> <Plug>(JavaComplete-Imports-Add)
"imap <F5> <Plug>(JavaComplete-Imports-Add)
"
"nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
"imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
"
"nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
"imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
"
"nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
"nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
"nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
"nmap <leader>jii <Plug>(JavaComplete-Imports-Add)
"
"imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
"imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
"imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
"imap <C-j>ii <Plug>(JavaComplete-Imports-Add)
"
"nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)
"imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)
"
"nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
"nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
"nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
"nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
"nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
"nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
"nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
"nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)
"
"imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
"imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
"imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)
"
"vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
"vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
"vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
"
"nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
"nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)
"
"
" List of Package
"clang_complete
"deoplete.nvim
"fonts
"jedi-vim
"nerdtree
"nvim-yarp
"paredit
"powerline
"project
"pycodestyle
"setup.sh
"syntastic
"tagbar
"target
"vim-airline
"vim-airline-themes
"vim-css-color
"vim-devicons
"vim-gitgutter
"vim-hug-neovim-rpc
"vim-javacomplete2
"vim-pathogen
"vim-table-mode
"vlime

