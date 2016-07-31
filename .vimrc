call pathogen#infect()
call pathogen#helptags()

autocmd BufEnter * nested :call tagbar#autoopen(0)

nmap <F8> :TagbarToggle<CR>
nmap H <C-w>j
nmap L <C-w>k

syntax on
set cul
set number
set incsearch
colors industry
set cindent

filetype plugin indent on
