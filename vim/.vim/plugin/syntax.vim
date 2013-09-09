" syntax.vim
" Sets syntax highlighting parameters if available.

if has('syntax')
    syntax on
    set background=dark
    set t_Co=256

    colorscheme molokai
    "colorscheme delroth-molokai
    "colorscheme jellybeans
    "colorscheme hybrid
    "au BufNewFile,BufRead *.tpp set filetype=cpp
endif
