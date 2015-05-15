filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'clausreinke/typescript-tools.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'eagletmt/neco-ghc'
Bundle 'evidens/vim-twig'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'gmarik/Vundle.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'leafgarland/typescript-vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplete.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

call vundle#end()

set t_cl=

syn on
filetype plugin on

set ttyfast
set lazyredraw

set backspace=2
set background=dark
set cursorline
set expandtab
set fileencodings=utf8,iso-8859-2
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set mouse=a
set noautochdir
set nopaste
set noshowmode
set number
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set tags=tags
set ttimeoutlen=50
set wildmode=list:longest

colorscheme solarized

set nobackup
set nowritebackup
set noswapfile

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=t  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L

set guifont=Inconsolata\ Medium\ 12

set completeopt+=menu,preview

nnoremap <S-h> :MBEbf<CR>
nnoremap <S-l> :MBEbb<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

let NERDTreeMinimalUI=1

let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': { 'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ] },
    \ 'component_expand': { 'syntastic': 'SyntasticStatuslineFlag' },
    \ 'component_type': { 'syntastic': 'error' },
    \ }

let g:miniBufExplVSplit=20
let g:miniBufExplBRSplit=1
let g:miniBufExplorerAutoStart=0

let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_camel_case_completion=1
let g:neocomplete#enable_underbar_completion=1
let g:neocomplete#enable_smart_case=1

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

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

"typescript
let g:typescript_indent_disable=1
