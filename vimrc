set shell=/bin/zsh
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'skywind3000/asyncrun.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'janko-m/vim-test'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-rails'
Plugin 'mbbill/undotree'
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
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'hashivim/vim-terraform'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
" Plugin 'xavierchow/vim-swagger-preview'
Plugin 'mikewest/vimroom'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'nvim-treesitter/playground'
Plugin 'neovim/nvim-lspconfig'
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/nvim-cmp'
Plugin 'hrsh7th/cmp-vsnip'
Plugin 'hrsh7th/vim-vsnip'
Plugin 'c-brenn/fuzzy-projectionist.vim'
Plugin 'andyl/vim-projectionist-elixir'
Plugin 'elixir-editors/vim-elixir'
Plugin 'jose-elias-alvarez/null-ls.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'gfanto/fzf-lsp.nvim'
Plugin 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
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
nnoremap <silent> <Leader>n :NERDTreeToggle
nnoremap <silent> <Leader>nn :NERDTreeToggle<CR>

let g:Powerline_symbols = "fancy"
let g:tex_flavor='latex'
let g:clang_library_path="/usr/lib/"
let g:clang_use_library=1
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256'


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
" make test commands execute using dispatch.vim
let test#strategy = "dispatch"

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

if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

set completeopt=menu,menuone,noselect

lua << EOF
-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<leader>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
    vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
    -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
    },
  window = {},
  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    }),
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
  });

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.solargraph.setup({
  on_attach = on_attach;
  capabilities = capabilities,
  settings = {
    solargraph = {
      useBundler = true;
    }
  }
})

-- Finally, let's initialize the Elixir language server

-- Replace the following with the path to your installation
local path_to_elixirls = vim.fn.expand("~/.cache/nvim/lspconfig/elixirls/elixir-ls/release/language_server.sh")

require'lspconfig'.elixirls.setup({
  cmd = {path_to_elixirls},
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    elixirLS = {
      -- I choose to disable dialyzer for personal reasons, but
      -- I would suggest you also disable it unless you are well
      -- aquainted with dialzyer and know how to use it.
      dialyzerEnabled = false,
      -- I also choose to turn off the auto dep fetching feature.
      -- It often get's into a weird state that requires deleting
      -- the .elixir_ls directory and restarting your editor.
      fetchDeps = false
    }
  },
})

require("null-ls").setup({
    capabilities = capabilities,
    sources = {
        require("null-ls").builtins.diagnostics.vale,
        require("null-ls").builtins.diagnostics.rubocop,
    },
})
EOF


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
require'toggle_lsp_diagnostics'.init()
EOF

nnoremap <leader>e <Plug>(toggle-lsp-diag)
