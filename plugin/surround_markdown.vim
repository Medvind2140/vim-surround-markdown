function! SurroundIt()
    let l:language = input("Language: ")
    execute "normal! `<O```" . l:language . "\<Esc>`>o```\<Esc>"
endfunction

function! JumpToStart()
    let l:current_line = line('.')
    let l:current_col = col('.')
    
    if search('^```', 'bcW')
        normal! $
    else
        call cursor(l:current_line, l:current_col)
        echo "No codeblock start found above the cursor"
    endif
endfunction

vnoremap ,q :<C-U>call SurroundIt()<CR>
nnoremap ,s :call JumpToStart()<CR>
