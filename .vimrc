call plug#begin('~/.vim/plugins')
" Theme
Plug 'dracula/vim',{'as':'dracula'}
Plug 'https://gitlab.com/maister/skyline.vim'
" Language server
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" Language specific
Plug 'tikhomirov/vim-glsl'
call plug#end()
set number
let g:dracula_colorterm = 0
let g:skyline_line_number = 1
colorscheme dracula
" hilight trailing whitespace
highlight ExtraWhitespace ctermbg=black ctermfg=yellow term=underline
match ExtraWhitespace /\s\+$/
" I use q! alot
set noswapfile
source ~/.config/vim/automd.vim
" :Termdebug
packadd termdebug

""" remaps
" tab complete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
