set nocompatible               " be iMproved
filetype off                   " must be off before Vundle has run

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ColorSchemeMenuMaker'
Plugin 'rainux/vim-desert-warm-256'

call vundle#end()
filetype plugin indent on     " and turn it back on!

if !isdirectory(expand("~/.vim/colors/.git"))
    !git clone git@github.com:Lokaltog/vim-distinguished.git ~/.vim/colors/
endif    

colorscheme distinguished

syntax on
set smarttab

