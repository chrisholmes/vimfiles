call pathogen#infect()
filetype plugin indent on
syntax on
set nocp
set cpoptions=aABceFsmq
"colour options
set t_Co=256
set background=dark
colorscheme solarized
set hidden

set laststatus=2
set noerrorbells
set novisualbell
let mapleader = ","
set showcmd
set number
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set autoread
set autowrite
set cursorline
set shellslash
set grepprg=grep\ -inH\ $*
set autochdir
set expandtab
set incsearch

nnoremap ; :
nnoremap <silent> <left> :bp<CR>
nnoremap <silent> <right> :bn<CR>
nnoremap <silent> <up> :cnext<CR>
nnoremap <silent> <down> :cprev<CR>
inoremap jj <Esc>
nnoremap j gj
nnoremap k gk

nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 
nnoremap <C-h> <C-w>h 

set tabstop=4
set shiftwidth=4
set softtabstop=4
let g:rubycomplete_rails=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_include_object=1
let g:rubycomplete_include_objectspace=1
augroup file_formats
    autocmd!
    autocmd FileType ruby set tabstop=2
    autocmd FileType ruby set shiftwidth=2
    autocmd FileType ruby set softtabstop=2
    autocmd FileType cpp set tabstop=4
    autocmd FileType cpp set shiftwidth=4
    autocmd FileType cpp set softtabstop=4
    au FileType haskell compiler ghc
    au FileType ruby compiler ruby
    au BufEnter * set tags=./tags;/
    au BufEnter /Users/chris/project/globe/* set makeprg=make\ -C\ /Users/chris/project/globe/bin
    au FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
    au BufWritePost *vimrc so ~/.vimrc
augroup end
set omnifunc=syntaxcomplete#Complete
"guioptions
set guioptions-=r
set guioptions-=m
set guioptions-=T
set guifont=Consolas\ for\ powerline:h14
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=+1

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    


"plugin settings
nnoremap <silent> <leader>m :VimroomToggle<CR>
nnoremap  <silent> <Leader>g :GundoToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle
nnoremap <silent> <Leader>nn :NERDTreeToggle<CR>
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:Powerline_symbols = "fancy"
let g:tex_flavor='latex'
let g:clang_library_path="/usr/lib/"
let g:clang_use_library=1
let g:syntastic_cpp_config_file='.clang_complete'
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256'
set shell=zsh
nnoremap <leader>rr :Rake<CR>
