" Run current python file
nnoremap <leader>r :call JuliaRun()<CR>

function! JuliaRun()
    echo system("julia ".shellescape(expand("%:p")))
endfunction
