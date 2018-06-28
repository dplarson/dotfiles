"--------------------------------------------------
" GENERAL
"--------------------------------------------------
set nocompatible
set nobackup
set noswapfile
set encoding=utf-8
set backspace=indent,eol,start

"--------------------------------------------------
" UI
"--------------------------------------------------
set cursorline
set incsearch
set number
set ruler
set mouse=a
set colorcolumn=80

"--------------------------------------------------
" COLORS
"--------------------------------------------------
syntax on
set background=dark
colorscheme solarized8_flat
set guifont=Inconsolata:h14

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

"--------------------------------------------------
" TEXT FORMATTING
"--------------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab
set nosmarttab
set nofoldenable

"--------------------------------------------------
" COMMAND REMAPS
"--------------------------------------------------
let mapleader=","
let maplocalleader=","
nnoremap ; :

" copy/paste to global register (i.e. system clipboard)
map <leader>y "+y
map <leader>p "+p
map <leader>P "+P

" switch between last two files
nnoremap <leader><leader> <c-^>

" clear search buffer
nmap <silent> <leader>/ :nohlsearch<CR>


"--------------------------------------------------
" PLUGINS
"--------------------------------------------------

" vim-plug (
call plug#begin('~/.config/nvim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
silent! nnoremap <unique> <silent> <leader>t :Files<CR>

" show preview window
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" async linter engine (ALE)
Plug 'w0rp/ale'

" Tab completion
Plug 'ervandew/supertab'

" asynchronous command execution
Plug 'tpope/vim-dispatch'
nnoremap <leader>r :Dispatch<CR>
autocmd FileType python let b:dispatch = 'python %'
autocmd FileType julia let b:dispatch = 'julia %'

" Initialize plugin system
call plug#end()