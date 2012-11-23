" Run current python file
nnoremap <leader>r :!python %:p<Enter>

" MacVim specific keymappings
if has("gui_macvim")
    " Run current Python file
    nnoremap <D-r> :!python %:p<Enter>
endif
