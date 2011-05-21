set cpoptions=aABceFsmq
set nocp
call pathogen#helptags()
call pathogen#runtime_append_all_bundles() 
filetype plugin indent on

let mapleader = " "
syntax on
set showcmd
set number
set ruler
colorscheme solarized
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase


set noerrorbells
set guifont=consolas


set autoread "update to match outside changes
set columns=80

set autoindent 

set history=100
autocmd FileType text setlocal textwidth=78
set hidden
set mouse=a
set whichwrap=b,s,h,l,<,>,~,[,]
set background=dark
set cursorline
set matchtime=5
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

set mousehide
set autochdir
set directory=$VIM/tmp
set backup
set backupdir=$VIM\backup

set clipboard+=unnamed
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
nmap <silent> <Leader>t :CommandT<CR>
nmap <silent> <Leader>n :NERDTree
nmap <silent> <Leader>nn :NERDTree<CR>
call togglebg#map("<F5>")
let g:tex_flavor='latex'
cd $HOME
