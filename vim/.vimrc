" Old config things
    "set history=1000
    "set wildmenu
    "set ignorecase 
    "set smartcase

    " Intuitive backspacing in insert mode
    "set backspace=indent,eol,start

    " Highlight search terms...
    "set hlsearch
    "set incsearch " ...dynamically as they are typed.

" Hide vim welcome text
set hidden

" Scroll the view in advance
set scrolloff=5

" Prevent sounding bell
set visualbell

" Alto's config ##############################################################
set foldmethod=marker
set foldmarker=/*,*/

call pathogen#infect()
call pathogen#helptags()

augroup filetypedetect
    " Mail
    autocmd BufRead,BufNewFile *mutt-*      setfiletype mail
    autocmd BufRead,BufNewFile *.todo      setfiletype mytodo
augroup END

