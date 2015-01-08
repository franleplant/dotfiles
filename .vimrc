" Enable VIM mode
set nocompatible

""""""""""""""""
" Vundle
""""""""""""""""

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plungins!!!
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'CruizeMissile/Revolution.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'


" Syntax highlighting polyfills
Plugin 'groenewege/vim-less'
Plugin 'evidens/vim-twig'

" Colorschemes
Plugin 'goatslacker/mango.vim'
Plugin 'croaker/mustang-vim'
Plugin 'sickill/vim-monokai'



call vundle#end()
filetype plugin indent on


" Default colorscheme
colorscheme monokai


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



""""""""""""""""
" /Vundle
""""""""""""""""

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
set tabstop=4
" Tab size in spaces for autoindentation
set shiftwidth=4

" When pressing <BS> over spaced tabs, erase them as if they were a single char
set softtabstop=4

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



"""""""""""""""
" Special things
"""""""""""""""

" Force .es6 file extension to be highlighted as javascript
au BufReadPost *.es6 set syntax=javascript

" Improve omnicomplete popup menu color
highlight Pmenu ctermbg=238
