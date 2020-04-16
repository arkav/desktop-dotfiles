call plug#begin('~/.local/share/nvim/plugins')
Plug 'dracula/vim', {'as':'dracula'}
Plug 'https://gitlab.com/maister/skyline.vim'
" Lsp config plugin
Plug 'neovim/nvim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'yami-beta/asyncomplete-omni.vim'
" Syntax hiligting for weird languages
Plug 'tikhomirov/vim-glsl'
call plug#end()
filetype plugin on
""" style
set number
let g:dracula_colorterm = 0
let g:skyline_line_number = 1
colorscheme dracula
" hilight extra whitespace
highlight ExtraWhitespace ctermbg=yellow ctermfg=black term=underline
match ExtraWhitespace /\s\+$/
""" I dont like swapfiles
set noswapfile
""" remaps
" tab complete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" setup lsp defs
" set omnifunc = lua vim.lsp.omnifuc()
lua require'lsp-setup.lua'
autocmd Filetype c,cpp setlocal omnifunc=v:lua.vim.lsp.omnifunc
call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
\ 'name': 'omni',
\ 'whitelist': ['c','cpp'],
\ 'blacklist': [],
\ 'completor': function('asyncomplete#sources#omni#completor')
\ }))
