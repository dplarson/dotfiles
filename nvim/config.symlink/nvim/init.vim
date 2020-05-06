"--------------------------------------------------
" GENERAL
"--------------------------------------------------
set nocompatible
set nobackup
set noswapfile
set encoding=utf-8
set backspace=indent,eol,start
set ignorecase

"--------------------------------------------------
" UI
"--------------------------------------------------
set cursorline
set incsearch
set number
set ruler
set mouse=a
set colorcolumn=80

" status line with solarized colors: bg=base03, fg=base00
set laststatus=2
hi StatusLine ctermbg=0 ctermfg=11 guibg=#002b36 guifg=#657b83
set statusline=%<                       " truncation point
set statusline+=%f                      " file name
set statusline+=\ %y                    " (file type)
set statusline+=%m                      " [+] if modified
set statusline+=%=                      " switch to right side
set statusline+=%-14(%3l,%02c\ 0x%02B%) " line #, column #  hex-value

"--------------------------------------------------
" COLORS
"--------------------------------------------------
set background=dark
colorscheme solarized8
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

" sane movement with wrap turned on
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

" strip whitespace
function! StripWhitespace ()
  exec ':%s/ \+$//gc'
endfunction
map <leader><space> :call StripWhitespace()<CR>

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

" LaTeX (async)
Plug 'lervag/vimtex'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
autocmd BufRead,BufNewFile *.tex set filetype=tex

" asynchronous command execution
Plug 'tpope/vim-dispatch'
nnoremap <leader>r :Dispatch<CR>
nnoremap <leader>o :Copen<cr>
autocmd FileType python let b:dispatch = 'python %'
autocmd FileType julia let b:dispatch = 'julia %'

" Initialize plugin system
call plug#end()

syntax on
