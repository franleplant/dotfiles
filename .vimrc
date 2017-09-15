" Enable VIM mode
set nocompatible
filetype off

""""""""""""""""
" Plugin Manager
""""""""""""""""


call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'CruizeMissile/Revolution.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'moll/vim-bbye'
Plug 'racer-rust/vim-racer'
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
"Plug 'marijnh/tern_for_vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --racer-completer' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'


" Syntax highlighting polyfills
Plug 'groenewege/vim-less'
Plug 'rust-lang/rust.vim'

" Colorschemes
Plug 'goatslacker/mango.vim'
Plug 'croaker/mustang-vim'
Plug 'sickill/vim-monokai'
Plug 'croaky/vim-colors-github'
Plug 'flowtype/vim-flow'
Plug 'mxw/vim-jsx'
"""""""""

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on


" Default colorscheme
colorscheme monokai

" enable jsx syntax highlihgting for .js files
let g:jsx_ext_required = 0


" Vim airline
" Always display the bar
set laststatus=2
" Show buffer list
let g:airline#extensions#tabline#enabled=1
" Dont use the weird symbols!
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'P'
let g:airline_symbols.whitespace = '!'




"""""""""""""""
" Base
""""""""""""""

syntax on

" Set encoding
set encoding=utf-8

" Show the editing mode you are currently in!
set showmode

" Buffers: allow them to be hiden when modified and not saved
set hidden

" Improve performance on big files
set lazyredraw

" Show hidden chars like tab, space, and cr
set listchars=trail:•,extends:#,tab:>-
set list

" Improve history size
set history=1000
set undolevels=1000

" Show line numbers by default
set number

" Highlight search terms
set hlsearch

" Highlight search terms as you type
set incsearch

" Highlight matching parenthesis and brackets
set showmatch

" Smart case sensitive search
set ignorecase
set smartcase

" Edit everywhere!
set virtualedit=all


"""""""""""""
" Indentation
"""""""""""""

" Tab size in spaces
set tabstop=2
" Tab size in spaces for autoindentation
set shiftwidth=2

" When pressing <BS> over spaced tabs, erase them as if they were a single char
set softtabstop=2

" Turn tabs into spaces
set expandtab

" Use the above tab configuration when using < and >
set shiftround

" Autoindent code!
set autoindent

" Copy previous line auto indentation 
set copyindent

" Insert tabs at the start of the line according the above config
set smarttab






"""""""""""""
" Key Mapping
"""""""""""""

let mapleader = ','

" Next buffer
nmap <leader>l :bnext<cr>

" Previous buffer
nmap <leader>h :bprevious<cr>

" Delete the current focused buffer
" (without closing windows or anything else)
nmap <leader>qq :Bdelete<cr>

map <leader>n :NERDTreeToggle<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nmap j gj
nmap k gk


"""""""""""""
" Special Things
"""""""""""""

" flow
let g:flow#autoclose = 1


" CtrlP ignores
set wildignore+=*/node_modules/*,*/bower_components/*,



"Rust
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/usr/local/rust/src/"


set nobackup
set noswapfile


au BufRead,BufNewFile *.js set filetype=typescript
au BufRead,BufNewFile *.jsx set filetype=typescript
