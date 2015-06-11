" Run current python file
nnoremap <leader>r :call PythonRun()<CR>

function! PythonRun()
    echo system("python ".shellescape(expand("%:p")))
endfunction
