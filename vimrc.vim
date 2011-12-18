set cpoptions=aABceFsmq
set nocp
filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()
filetype plugin indent on

set t_Co=256
set background=dark			
colorscheme solarized


let mapleader = " "
syntax on
set showcmd
set number
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
nmap <silent> <leader>m :VimroomToggle<CR>
nnoremap <Leader>g :GundoToggle<CR>
nmap <silent> <Leader>t :CommandT<CR>
nmap <silent> <Leader>n :NERDTreeToggle
nmap <silent> <Leader>nn :NERDTreeToggle<CR>
call togglebg#map("<F5>")
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
"nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr>:set scb<cr>
au BufEnter *.hs compiler ghc
set guioptions-=r
set guioptions-=m
set guioptions-=T
let g:vimroom_guibackground = '#002b36'
let g:vimroom_ctermbackground = 8
