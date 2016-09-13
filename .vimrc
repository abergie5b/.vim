call pathogen#infect()
call pathogen#helptags()

" Tmux-like window resizing
function! IsEdgeWindowSelected(direction)
    let l:curwindow = winnr()
    exec "wincmd ".a:direction
    let l:result = l:curwindow == winnr()

    if (!l:result)
        " Go back to the previous window
        exec l:curwindow."wincmd w"
    endif

    return l:result
endfunction

function! GetAction(direction)
    let l:keys = ['h', 'j', 'k', 'l']
    let l:actions = ['vertical resize -', 'resize +', 'resize -', 'vertical resize +']
    return get(l:actions, index(l:keys, a:direction))
endfunction

function! GetOpposite(direction)
    let l:keys = ['h', 'j', 'k', 'l']
    let l:opposites = ['l', 'k', 'j', 'h']
    return get(l:opposites, index(l:keys, a:direction))
endfunction

function! TmuxResize(direction, amount)
    " v >
    if (a:direction == 'j' || a:direction == 'l')
        if IsEdgeWindowSelected(a:direction)
            let l:opposite = GetOpposite(a:direction)
            let l:curwindow = winnr()
            exec 'wincmd '.l:opposite
            let l:action = GetAction(a:direction)
            exec l:action.a:amount
            exec l:curwindow.'wincmd w'
            return
        endif
    " < ^
    elseif (a:direction == 'h' || a:direction == 'k')
        let l:opposite = GetOpposite(a:direction)
        if IsEdgeWindowSelected(l:opposite)
            let l:curwindow = winnr()
            exec 'wincmd '.a:direction
            let l:action = GetAction(a:direction)
            exec l:action.a:amount
            exec l:curwindow.'wincmd w'
            return
        endif
    endif

    let l:action = GetAction(a:direction)
    exec l:action.a:amount
endfunction



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
