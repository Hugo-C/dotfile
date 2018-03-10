set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'valloric/youcompleteme'  "hell to have it to work
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'

"colorscheme zone /!\
Plugin 'chriskempson/base16-vim'
Plugin 'ajh17/spacegray.vim'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineset nocompatible

syntax on
set encoding=utf-8
set termencoding=utf-8
if &modifiable
  set fileencoding=utf-8
endif

let base16colorspace=256
set background=dark
colorscheme molokai
set number
set showcmd
set wildmenu

set smartcase
set smarttab

set hlsearch
set incsearch

filetype on

set mouse =a
"set cursorline
imap <C-Space> <C-X><C-O>
let g:ycm_key_list_select_completion = ['<Enter>']

let g:syntastic_python_checkers = ['flake8'] "set syntastic to python3

set tabstop =4
set shiftwidth =4
set softtabstop =4

set autoindent
set autowrite

" handle auto-closing bracket
ino " ""<left>
" ino ' ''<left>  "plus génant qu'autre chose ...'
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

nnoremap <C-tab>   :tabnext<CR>
map <C-i> :gg=G' <Return>
map <F3> :!python3 -i % <Return>
map <F5> :!javac "%" <Return>
map <F7> :!gcc -Wall -Wextra -pedantic -g -std=c99 % -o %:r <Return>
map <F8> :!gcc -Wall -Wextra -pedantic -g -std=c99 % -o %:r <Return> :!./%:r <Return>
map <F9> :!./%:r <Return> 
map <F10> :!javac "%" <Return> :!java "%:r" <Return>
map <F11> :!ocaml -init % <Return> 
map <F12> :!ocamlc -i "%" <Return>

"TP2 hyvernat => remove
map <F6> :!make <CR> :!./%:r -T all <CR>
"fin TP2
set title
set visualbell

