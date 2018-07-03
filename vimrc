if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Color schemes
Plug 'Lokaltog/vim-distinguished'

" toml support
Plug 'cespare/vim-toml'

" python support
Plug 'davidhalter/jedi-vim'

" Clang support
Plug 'justmao945/vim-clang'

" OpenCL support
Plug 'petRUShka/vim-opencl'

" Language server protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()

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

" Required for operations modifying multiple buffers like rename.
set hidden

" LSP config

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }
