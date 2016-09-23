call plug#begin(expand('~/.vim/plugged'))

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fholgado/minibufexpl.vim'
Plug 'gmarik/Vundle.vim'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'luochen1990/rainbow'
Plug 'mileszs/ack.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neocomplete.vim'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

call plug#end()

set t_cl=
set t_Co=256

filetype plugin indent on

set ttyfast
set lazyredraw

set background=dark
set cursorline
set expandtab
set fileencodings=utf8,iso-8859-2
set mouse=a
set noautochdir
set nopaste
set noshowmode
set number
set relativenumber
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set foldmethod=indent
set nofoldenable
"set wildmode=list:longest

colorscheme solarized

set nobackup
set nowritebackup
set noswapfile

set undofile
set undodir=$HOME/.vim/undo

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=t  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L

set guifont=Inconsolata\ Medium\ 12

set completeopt+=menu,preview

nnoremap Q <nop>

nnoremap <S-h> :MBEbp<CR>
nnoremap <S-l> :MBEbn<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

let NERDTreeMinimalUI=1

let g:acp_enableAtStartup=0

let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_camel_case_completion=1
let g:neocomplete#enable_underbar_completion=1
let g:neocomplete#enable_smart_case=1
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php='[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.typescript='.*'
let g:neocomplete#sources#omni#input_patterns.javascript='[^. *\t]\.\w*\|\h\w*::'

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled=0
let g:jedi#auto_vim_configuration=0
let g:jedi#smart_auto_mappings=0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

let g:neocomplete#sources#omni#input_patterns.elixir='.*'

let mapleader="\<Space>"

nmap <Leader>w :w<CR>
nmap <Leader>q :qall<CR>
nmap <Leader>b :MBEToggle<CR>

nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>

"CtrlP
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\/]\.(git|hg|svn)$|\v[\/]node_modules$|\v[\/](deps|priv|_build)$',
\ }

"XDEBUG
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif

let g:vdebug_options["server"] = "192.168.100.37"
let g:vdebug_options["path_maps"] = {"/home/jlehmann/DEV/middleware": "/mnt/dev/middleware"}
let g:vdebug_options["ide_key"] = 'XDEBUG_VIM'

"Ack
let g:ackprg = 'ag --vimgrep'

" lightline
let g:lightline = {
            \ 'colorscheme': 'solarized'
            \ }

" minibufexpl
let g:miniBufExplVSplit=20
let g:miniBufExplorerAutoStart=0

