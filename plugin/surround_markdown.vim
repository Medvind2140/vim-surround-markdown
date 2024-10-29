function! SurroundIt()
    let l:language = input("Language: ")
    execute "normal! `<O```" . l:language . "\<Esc>`>o```\<Esc>"
endfunction

vnoremap Sq :<C-U>call SurroundIt()<CR>
