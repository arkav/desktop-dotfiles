" plugins
call plug#begin('~/.vim/plugins')
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()
let g:dracula_colorterm = 0
colorscheme dracula
" status always visible
set laststatus=2
" I use q! alot
set noswapfile

