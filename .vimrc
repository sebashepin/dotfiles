execute pathogen#infect()
scriptencoding utf-8
set encoding=utf-8
syntax on
let g:rehash256 = 1
set background=dark
filetype plugin indent on

let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set pastetoggle=<F12>
set guifont=Consolas:h12:cANSI

if has('statusline')
set laststatus=2
set statusline=%<%f
set statusline+=\ [%{&ff}/%Y]
set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif

autocmd BufEnter * silent! lcd %:p:h
" CDC = Change to Directory of Current file
command CDC cd %:p:h
let mapleader = ","

noremap <Leader>- :call Toggle_task_status()<CR>

nmap <F8> :TagbarToggle<CR>

