""" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade.git'
Plugin 'fatih/vim-go'
Plugin 'groenewege/vim-less'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""" Indenting
set tabstop=2
set shiftwidth=2
set expandtab

""" Misc.
syntax on
set nu
set colorcolumn=80
hi ColorColumn term=reverse ctermbg=0 guibg=Black
set nowrap

set term=xterm-256color
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

""" Search
set incsearch
set smartcase
set ignorecase
set hlsearch


""" CMD Autocomple
set wildmenu
set wildmode=list:longest:full


""" Input
set mouse=a

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""" Tabs
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

""" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
au BufNewFile,BufRead *.md set filetype=markdown

""" Go Configs
" set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

