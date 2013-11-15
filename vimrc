"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible
set t_Co=256

" automate source vimrc after changes
au! BufWritePost vimrc source %

" initialize pathogen
call pathogen#infect()
call pathogen#helptags()

" Show syntax highlighting and relative line numbers
syntax on
set number
set relativenumber

colorscheme wombat256mod

" Show incomplete commands and mode down the bottom
set showcmd
set showmode

" default indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" load ftplugins and indent files
filetype plugin on
filetype indent on

" configure vim-airline
set laststatus=2
let g:airline_theme = 'powerlineish'
if !exists('g:airline_powerline_fonts')
    " Use the default set of separators with a few customizations
    let g:airline_left_sep=' ›'  " Slightly fancier than '>'
    let g:airline_right_sep='‹ ' " Slightly fancier than '<'
endif
let g:airline#extensions#branch#enabled = 1
