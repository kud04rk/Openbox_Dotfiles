"set only compatible for vim
set nocompatible

"for syntax
syntax on

"for line numbers
set number relativenumber

"no system sounds when at the end of line 
set belloff=all
set mouse =a
set clipboard=unnamedplus
set cursorline
highlight CursorLine cterm=bold

"tabs config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"indetendation
set smartindent

"no swapfiles
set noswapfile

"Shortcuts
nnoremap S :%s//g<Left><Left>

"searching
set incsearch

"Status line
set laststatus=2
set statusline+=\ %F
