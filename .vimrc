runtime bundle/vim-pathogen/autoload/pathogen.vim

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

execute pathogen#infect()
syntax on
filetype plugin indent off
