runtime bundle/vim-pathogen/autoload/pathogen.vim

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

execute pathogen#infect()
syntax on
set mouse-=a

" Apply .asm syntax highlighting to .nasm files
au BufRead,BufNewFile *.nasm set filetype=asm

