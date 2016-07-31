filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'itchyny/lightline.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'luochen1990/rainbow'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplete.vim'
Plugin 'slashmili/alchemist.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

call vundle#end()

set t_cl=

filetype plugin on

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

nnoremap <S-h> :bp<CR>
nnoremap <S-l> :bn<CR>

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

let mapleader=','
map <Leader>m :make<CR>
map <Leader>b :MBEToggle<CR>
map <Leader>B :MBEToggleMRU<CR>
map <Leader>w :w<CR>

map \q :qall<CR>
map \p :NERDTreeToggle<CR>
map \1 :buffer 1<CR>
map \2 :buffer 2<CR>
map \3 :buffer 3<CR>
map \4 :buffer 4<CR>
map \5 :buffer 5<CR>
map \6 :buffer 6<CR>
map \7 :buffer 7<CR>
map \8 :buffer 8<CR>
map \9 :buffer 9<CR>
map \0 :buffer 10<CR>

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
