"Vundle

set nocompatible               " be iMproved

filetype off                   " must be off before Vundle has run

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'Lokaltog/vim-distinguished'

" Rust support
Plugin 'rust-lang/rust.vim'

" Swift support
Plugin 'keith/swift.vim'

" Clang support
Plugin 'justmao945/vim-clang'

" Homebrew support
Plugin 'xu-cheng/brew.vim'

" OpenCL support
Plugin 'petRUShka/vim-opencl'

call vundle#end()
filetype plugin indent on     " and turn it back on!

" Configuration

syntax on
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set expandtab
set smartindent
set t_Co=256

colorscheme distinguished

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
