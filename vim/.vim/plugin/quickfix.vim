
au FileType qf call AdjustWindowHeight(3, 10)
au BufEnter * call MyLastWindow()

function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

function! MyLastWindow()
    if &buftype=="quickfix"
        if winbufnr(2) == -1
            quit!
        endif
    endif
endfunction
