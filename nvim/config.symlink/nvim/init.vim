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

if has('mouse')
    set mouse=a
    set mousemodel=popup_setpos
    set mousehide
endif

"--------------------------------------------------
" TEXT FORMATTING
"--------------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab
set nosmarttab
set nofoldenable

let mapleader=","
let maplocalleader=","
nnoremap ; :

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
" PLUGINS
"--------------------------------------------------

" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
silent! nnoremap <unique> <silent> <leader>t :Files<CR>

" show preview window
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Initialize plugin system
call plug#end()
