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

set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set textwidth=80
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
nnoremap <Leader>t :Dispatch call RunCurrentSpecFile()<CR>
nnoremap <Leader>l :Dispatch call RunLastSpec()<CR>

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:Powerline_symbols = "fancy"
let g:tex_flavor='latex'
let g:clang_library_path="/usr/lib/"
let g:clang_use_library=1
let g:syntastic_cpp_config_file='.clang_complete'
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256'
let g:rspec_command = "Dispatch rspec {spec}"

let g:C_Ctrl_j = 'off'
let g:BASH_Ctrl_j = 'off'

autocmd FileType cucumber compiler cucumber | setl makeprg=cucumber\ \"%:p\"
autocmd FileType ruby
      \ if expand('%') =~# '_test\.rb$' |
      \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
      \ elseif expand('%') =~# '_spec\.rb$' |
      \   compiler rspec | setl makeprg=rspec\ -fp\ --color\ \ \"%:p\" |
      \ else |
      \   compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
      \ endif
autocmd User Bundler
      \ if &makeprg !~# 'bundle' | setl makeprg^=bundle\ exec\  | endif

if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      execute "silent !sh -c 'sleep 0.01; tmux select-pane -" . a:tmuxdir . "' &"
      redraw!
    endif
  endfunction
  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;".  previous_title . "\<Esc>\\" . &t_te
  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif


cmap w!! w !sudo tee > /dev/null %
cmap Gs Gstatus

iabbrev inititalize initialize
iabbrev intitilize initialize
iabbrev intitialzie initialize
