call pathogen#infect()
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'janko-m/vim-test'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-rails'
Plugin 'sjl/gundo.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rodjek/vim-puppet'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'hashivim/vim-terraform'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'xavierchow/vim-swagger-preview'
Plugin 'mikewest/vimroom'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'iamcco/markdown-preview.nvim'
call vundle#end()
filetype plugin indent on
syntax on
set nocp
set cpoptions=aABceFsmq
"colour options
set t_Co=256
set background=light
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
set expandtab
set incsearch

nnoremap <silent> <left> :bp<CR>
nnoremap <silent> <right> :bn<CR>
nnoremap <silent> <up> :cnext<CR>
nnoremap <silent> <down> :cprev<CR>
nnoremap ; :
inoremap jj <Esc>
nnoremap j gj
nnoremap k gk

set tabstop=2
set shiftwidth=2
set softtabstop=2
let g:rubycomplete_rails=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_include_object=1
let g:rubycomplete_include_objectspace=1

set omnifunc=syntaxcomplete#Complete

augroup file_formats
    autocmd!
    autocmd FileType ruby set tabstop=2
    autocmd FileType ruby set shiftwidth=2
    autocmd FileType ruby set softtabstop=2
    autocmd FileType cpp set tabstop=4
    autocmd FileType cpp set shiftwidth=4
    autocmd FileType cpp set softtabstop=4
    au FileType haskell compiler ghc
    au BufEnter * set tags=./tags;/
    au FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
    au BufWritePost *vimrc so ~/.vim/vimrc
augroup end

"guioptions
set guioptions-=r
set guioptions-=m
set guioptions-=T
set guifont=Consolas\ for\ powerline:h14
set wrap
set formatoptions=qrn1
set colorcolumn=+1

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    


"plugin settings
nnoremap  <silent> <Leader>m :Make<CR>
nnoremap  <silent> <Leader>c :Latexmk<CR>
nnoremap <leader>rr :Rake<CR>
nnoremap  <silent> <Leader>g :GundoToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle
nnoremap <silent> <Leader>nn :NERDTreeToggle<CR>

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:Powerline_symbols = "fancy"
let g:tex_flavor='latex'
let g:clang_library_path="/usr/lib/"
let g:clang_use_library=1
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256'
let g:rspec_command = "Dispatch rspec {spec}"

let g:C_Ctrl_j = 'off'
let g:BASH_Ctrl_j = 'off'


cmap w!! w !sudo tee > /dev/null %
cmap Gs Gstatus

iabbrev inititalize initialize
iabbrev intitilize initialize
iabbrev intitialzie initialize
iabbrev incrememets increments
iabbrev interaciton interaction

let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=2
let vim_markdown_preview_hotkey='<C-m>'

nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
nmap <silent> t<C-r> :Dispatch ruby %<CR>
" make test commands execute using dispatch.vim
let test#strategy = "dispatch"

let g:ale_ruby_rubocop_options = "-c ~/.rbenv/versions/2.4.2/lib/ruby/gems/2.4.0/gems/govuk-lint-3.8.0/configs/rubocop/all.yml"

let test#ruby#rspec#options = ""

let g:rails_projections = {
      \  'app/*.rb': {
      \     'alternate': 'spec/{}_spec.rb',
      \   },
      \  'spec/*_spec.rb': {
      \     'alternate': 'app/{}.rb',
      \     'type': 'test'
      \   }
      \}


autocmd FileType markdown setlocal spell
let g:ale_sign_column_always = 1

