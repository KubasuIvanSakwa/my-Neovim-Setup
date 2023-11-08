" my first vim setup
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
autocmd VimEnter * T clear

:source ~/.config/nvim/plugged/awesome-vim-colorschemes/colors/mountaineer.vim
autocmd VimEnter * NERDTree
autocmd VimEnter * TagbarToggle


call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/vim-airline/vim-airline' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'kassio/neoterm'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/SirVer/ultisnips'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <C-e> :set paste<CR>
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F5> :T exit<CR>
nnoremap <F6> :T clear<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
" Open Neoterm below the current buffer when using :T
let g:neoterm_default_mod = "split"
set splitbelow

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
":PlugClean removes all plugs that you have deleted and nolonger using
