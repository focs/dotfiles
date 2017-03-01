call plug#begin('~/.local/share/nvim/plugged')

Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

Plug 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

"Colorschemes
Plug 'Solarized'
Plug 'zeis/vim-kolor'

call plug#end()

set hlsearch
syntax enable
"let g:solarized_termcolors = 16 "For mac
set background=dark
colorscheme kolor

set nu "Show line number
set cursorline "Highlight current line
set colorcolumn=81 "Show Clumn line
set wildmenu "Show autocomplete list of commands
set backspace=2 "make backspace work

" Change leader key to ","
let mapleader = ","

noremap <leader>bd :Bclose<CR>      " Close the buffer.
noremap <leader>bn :bn<CR>          " Next buffer.
noremap <leader>bp :bp<CR>          " Previous buffer.
noremap <leader>bt :b#<CR>          " Toggle to most recently used buffer.

"spaces instead of tab
set expandtab
set tabstop=2
set shiftwidth=2

"moving in warped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

set laststatus=2 "workaround for showing airline when no split
set noshowmode "remove the old status bar -- INSERT --
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

map <silent> <C-h> <C-w>< 
map <silent> <C-j> <C-W>- 
map <silent> <C-k> <C-W>+ 
map <silent> <C-l> <C-w>> 

:command Q q
:command W w
:command WQ wq
:command Wq wq

