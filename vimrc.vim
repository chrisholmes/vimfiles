set cpoptions=aABceFsmq
set cpoptions=aABceFsmq
set nocp
filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()
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

nnoremap <silent> <Leader>m :VimroomToggle<CR>
set noerrorbells
set guifont=consolas:h11
set autoread "update to match outside changes
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
set columns=80
set backup
set backupdir=$VIM\backup
set clipboard+=unnamed
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
let g:SuperTabDefaultCompletionType = 'context'
nnoremap <Leader>g :GundoToggle<CR>
nmap <silent> <Leader>t :CommandT<CR>
nmap <silent> <Leader>n :NERDTreeToggle
nmap <silent> <Leader>nn :NERDTreeToggle<CR>
call togglebg#map("<F5>")
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr>:set scb<cr>
au BufEnter *.hs compiler ghc
set guioptions-=r
set guioptions-=m
set guioptions-=T
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
if has('gui_running')
    let g:vimroom_background= '#002b36'
    let g:vimroom_background = '#002b36'
endif
