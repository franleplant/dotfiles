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
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --rust-completer --ts-completer' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tomlion/vim-solidity'


" Syntax highlighting polyfills
Plug 'groenewege/vim-less'
Plug 'rust-lang/rust.vim'

" Colorschemes
Plug 'sickill/vim-monokai'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'sainnhe/edge'
Plug 'tomasiser/vim-code-dark'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'croaky/vim-colors-github'
Plug 'flowtype/vim-flow'
Plug 'mxw/vim-jsx'
"""""""""

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on


" Default colorscheme
colorscheme monokai-bold

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

" alternate escape key
imap jj <Esc>


"""""""""""""
" Special Things
"""""""""""""

" flow
let g:flow#autoclose = 1


" CtrlP ignores
set wildignore+=*/node_modules/*,*/bower_components/*,




set nobackup
set noswapfile


au BufRead,BufNewFile *.js set filetype=typescript
au BufRead,BufNewFile *.jsx set filetype=typescript
au BufRead,BufNewFile *.ts set filetype=typescriptreact
au BufRead,BufNewFile *.tsx set filetype=typescriptreact



" Disable automcompelte helper window
"set completeopt-=preview



" extracted from https://github.com/neoclide/coc.nvim


" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
