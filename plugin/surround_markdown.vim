function! SurroundIt()
    let l:language = input("Language: ")
    execute "normal! `<O```" . l:language . "\<Esc>`>o```\<Esc>"
endfunction

function! RemoveTags()
    let l:start_line = line('.')
    let l:end_line = l:start_line

    " Search backwards for the opening ```
    if search('^```', 'bcW') > 0
        let l:start_line = line('.')
    else
        echo "No codeblock start found above the cursor"
        return
    endif

    " Search forwards for the closing ```
    if search('^```', 'W') > 0
        let l:end_line = line('.')
    else
        echo "No codeblock end found below the cursor"
        return
    endif

    " Delete the lines
    execute l:start_line . ',' . l:end_line . 'delete _'
endfunction

vnoremap _s :<C-U>call SurroundIt()<CR>
nnoremap _r :call RemoveTags()<CR>
