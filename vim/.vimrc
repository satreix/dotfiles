" Hide vim welcome text
set hidden

" Scroll the view in advance
set scrolloff=5

" Prevent sounding bell
set visualbell

set foldmethod=marker
set foldmarker=/*,*/

call pathogen#infect()
call pathogen#helptags()

augroup filetypedetect
    " Mail
    autocmd BufRead,BufNewFile *mutt-*      setfiletype mail
    autocmd BufRead,BufNewFile *.todo      setfiletype mytodo
augroup END
