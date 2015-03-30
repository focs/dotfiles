set nocompatible              " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:

" UltiSnips for snipets
Plugin 'SirVer/UltiSnips'
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" Snippets are separated from the engine
Plugin 'honza/vim-snippets'

" Command T plugin
Plugin 'wincent/Command-T'
"let g:CommandTMatchWindowAtTop = 1
"let g:CommandTMatchWindowReverse = 1
let g:CommandTMaxFiles=1000000
"let g:CommandTMaxCachedDirectories=3
let g:CommandTMaxHeight=30
let g:CommandTTraverseSCM="dir"
let g:CommandTFileScanner="find"

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "/home/fox/.vim/ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
"let g:ycm_server_log_level = 'debug'
"let g:ycm_key_list_previous_completion=['<Up>']
"YcmCompleter GoToDefinitionElseDeclaration<CR>

"Bundle 'scrooloose/Syntastic'
"Bundle 'clang-complete'
"Bundle 'highlight_current_line.vim'

"Plugin to visualize tabs
Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey

"Plugin to change between .h and .cpp
"Bundle 'a.vim'

Plugin 'LaTeX-Box-Team/LaTeX-Box'
let g:LatexBox_latexmk_options = "-xelatex -pdf"
" From https://github.com/LaTeX-Box-Team/LaTeX-Box/issues/105
let g:LatexBox_latexmk_async=1 "ho deia l'error del vim...
let g:LatexBox_quickfix=2
let g:LatexBox_latexmk_preview_continuously=1 
"-pdfps -pvc"

"Conection with ipython
Plugin 'ivanov/vim-ipython'

"Bundle 'Conque-Shell'

"Close buffer plugin
Plugin 'butane.vim'

"Increment indexes
"Plugin 'increment.vim'

"Search and replace on multiple files
"Bundle 'EasyGrep'
Plugin 'dkprice/vim-easygrep'

" Lets see how this works
" Bundle 'Powerline'
Plugin 'bling/vim-airline'

" Add closing brakeds and quotes
Plugin 'Raimondi/delimitMate'

" use git from vimkk
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'

" fugitive extension 
Plugin 'gregsexton/gitv'

Plugin 'Solarized'
Plugin 'vim-kolor'

Plugin 'martong/vim-compiledb-path'

" move text around
"Bundle 'matze/vim-move'
"let g:move_key_modifier = 'S'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" My commands
" Set color scheme that I like.
if $TERM == "xterm-256color"
  set t_Co=256
endif

set hlsearch
  syntax enable
  set background=dark

if has("gui_running")
  syntax enable
  set background=dark
  colorscheme solarized

  "colorscheme vividchalk
  "colorscheme zenburn
  "colorscheme blue
  "set background=dark
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
else
  "colorscheme vividchalk
  colorscheme kolor
  "hi Search cterm=NONE ctermfg=black ctermbg=LightBlue
  "colorscheme zenburn
endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
"hi IndentGuidesOdd  guibg=lightgray   ctermbg=3
"hi IndentGuidesEven guibg=darkgray ctermbg=4

" To avoid clang message of not compiling small files
set cmdheight=2

" Show line number
set nu

" Highlight current line
set cursorline

" Show Clumn line
set colorcolumn=81

" Show autocomplete list of commands
set wildmenu

" Change leader key to ","
let mapleader = ","

set foldmethod=syntax
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Buffer navigation
"map <leader>n :bn<cr>
"map <leader>p :bp<cr>
"map <leader>d :bd<cr>
"map <leader>l :ls<cr>

noremap <leader>bd :Bclose<CR>      " Close the buffer.
noremap <leader>bl :ls<CR>          " List buffers.
noremap <leader>bn :bn<CR>          " Next buffer.
noremap <leader>bp :bp<CR>          " Previous buffer.
noremap <leader>bt :b#<CR>          " Toggle to most recently used buffer.
noremap <leader>bx :Bclose!<CR>     " Close the buffer & discard changes.

nnoremap <silent> <Leader>bb :CommandTBuffer<CR>

"Able and disable spellcheck in english
map <F5> :setlocal spell! spelllang=en_gb<CR>

"spaces instead of tab
set expandtab
set tabstop=2
set shiftwidth=2

"moving in warped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"set guifont=DejaVu\ Sans\ Mono\ 10
set guifont=Monospace\ 8

"braking hte habit of using the arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" airline configuration
"set showcmd "Show what you are tiping in normal mode
set laststatus=2 "workaround for showing airline when no split
set noshowmode "remove the old status bar -- INSERT --

"show branch in status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

map <silent> <C-h> <C-w>< 
map <silent> <C-j> <C-W>- 
map <silent> <C-k> <C-W>+ 
map <silent> <C-l> <C-w>> 

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

if has("autocmd")
  autocmd BufWritePre *.py,*.js,*.hpp,*.h,*.c,*.cpp,*.m,*.mm :call <SID>StripTrailingWhitespaces()
endif

" return to normal mode with jk
imap jk <Esc>
imap kj <Esc>

:command Q q
:command WQ wq
:command Wq wq
