filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on
set nocp
set cpoptions=aABceFsmq
"colour options
set t_Co=256
set background=dark
colorscheme solarized
let g:vimroom_guibackground = '#002b36'
let g:vimroom_ctermbackground = 8

set laststatus=2
set noerrorbells
set novisualbell
let mapleader = " "
set showcmd
set number
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set shell=/bin/bash
set autoread
set autowrite
set cursorline
set shellslash
set grepprg=grep\ -nH\ $*
set clipboard+=unnamed
set autochdir

"plugin settings
nmap <silent> <leader>m :VimroomToggle<CR>
nnoremap  <silent> <Leader>g :GundoToggle<CR>
nmap <silent> <Leader>t :CommandT<CR>
nmap <silent> <Leader>n :NERDTreeToggle
nmap <silent> <Leader>nn :NERDTreeToggle<CR>
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
call togglebg#map("<F5>")
set ofu=syntaxcomplete#Complete
"let g:Powerline_theme= "solarized"
let g:Powerline_symbols = "fancy"
nnoremap ; :
"vim movement settings/keyboard remapping
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
nmap <silent> <left> :bp<CR>
nmap <silent> <right> :bn<CR>
imap jj <Esc>
set tabstop=4
set shiftwidth=4
set softtabstop=4
augroup file_formats
    " this one is which you're most likely to use?
    autocmd!
    autocmd BufRead,BufNewFile *.rb set tabstop=2
    autocmd BufRead,BufNewFile *.rb set shiftwidth=2
    autocmd BufRead,BufNewFile *.rb set softtabstop=2
augroup end

let g:tex_flavor='latex'
au BufEnter *.hs compiler ghc

"guioptions
set guioptions-=r
set guioptions-=m
set guioptions-=T
set guifont=Consolas\ for\ powerline:h14
set ofu=syntaxcomplete#Complete
set expandtab
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=+1
" Backups {{{
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    " It's 2011, Vim.
 " }}}

au BufWritePost .vimrc so ~/.vimrc
let g:clang_library_path="/Developer/usr/clang-ide/lib/libclang.dylib"
let g:clang_use_library=1

let g:clang_user_options='|| exit 0'
set hid
augroup chang_background
    autocmd!
    " this one is which you're most likely to use?
    autocmd InsertEnter * set background=light
    autocmd InsertLeave * set background=dark
augroup end
nnoremap j gj
nnoremap k gk
nnoremap <F4> :call Send_to_Screen(join(getline(1,'$'), "\n"))<CR>
