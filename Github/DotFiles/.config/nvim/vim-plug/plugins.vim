" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Startify
    Plug 'mhinz/vim-startify'
    " Which Key
    Plug 'liuchengxu/vim-which-key'
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Nerd commenter
    Plug 'preservim/nerdcommenter'
    " Color peeker
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'ap/vim-css-color'
    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'safv12/andromeda.vim'

call plug#end()

syntax on

"colorscheme dracula

set background=dark
colorscheme andromeda

"colorscheme gruvbox
"set background=dark
