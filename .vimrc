set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
set number
set numberwidth=5
set cpoptions+=n
set modeline
set ls=2
colorscheme jellybeans

" Plugins
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/tpope/vim-pathogen'
Plugin 'https://github.com/scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Maps
map <C-n> :NERDTreeToggle<CR>
