" Run current python file
nnoremap <leader>r :call TorchRun()<CR>

function! TorchRun()
    echo system("th ".shellescape(expand("%:p")))
endfunction
