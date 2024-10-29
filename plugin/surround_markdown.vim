function! SurroundIt()
    let l:language = input("Language: ")
    execute "normal! `<O```" . l:language . "\<Esc>`>o```\<Esc>"
endfunction

function! RemoveTags()
    let l:current_line = line('.')
    let l:current_col = col('.')

    if search('^```', 'bcW') > 0
        let l:start_line = line('.')
        delete _
        
        if search('^```', 'W') > 0
            delete _
            
            call cursor(l:current_line - 1, l:current_col)
        else
            echo "No closing tag found"
            call cursor(l:current_line - 1, l:current_col)
        endif
    else
        echo "No opening tag found above the cursor"
    endif
endfunction

vnoremap _s :<C-U>call SurroundIt()<CR>
nnoremap _r :call RemoveTags()<CR>
