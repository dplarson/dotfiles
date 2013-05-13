" Run current python file
nnoremap <leader>r :call PythonRun()<CR>

function! PythonRun()
    echo system("python ".expand("%:p"))
endfunction
