" Vundle stuff
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on




" Make .swp files go in /tmp
set directory=/tmp//

" Sets directory automatically
set autochdir

" Sets scrolling and clicking around
set mouse=a

" Show partial commands in the last line of the screen
set showcmd

" Use case insensitive sear, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line you're currently on
set autoindent

" Indetation settings
set shiftwidth=2
set tabstop=2

" Code folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Display the curso position on the last line of the screen or in the status line of a window
set ruler

" Display line numbers on the left
set number

" Set weird colors
au BufRead,BufNewFile *.twig set filetype=html

" Setup theme
syntax enable
set background=light
set guifont=Source\ Code\ Pro\ Light:h11

