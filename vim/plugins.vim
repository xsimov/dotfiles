set nocompatible              " be iMproved, required
filetype off                  " required
runtime macros/matchit.vim

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
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
Plugin 'jgdavey/tslime.vim'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'leafgarland/typescript-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sjl/vitality.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'fatih/vim-go'
Plugin 'janko-m/vim-test'
Plugin 'godlygeek/tabular'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype on
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
" Put your non-Plugin stuff after this line
" Make CtrlP use ag for listing the files. Way faster and no useless files.
" let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
" let g:ctrlp_use_caching = 0
