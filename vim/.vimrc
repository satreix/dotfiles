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


" Old configuration
"
"set nocompatible
"
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"" set mouse=a
"
"" Launch pathogen (https://github.com/tpope/vim-pathogen)
"execute pathogen#infect()
"
"syntax on
"filetype plugin indent on
"
"set backspace=2
"set laststatus=2
"set shiftwidth=2
"set softtabstop=2
"set tabstop=8
"set expandtab
"set smarttab
"
"set nu
"set ruler
"set textwidth=80
"set colorcolumn=72,80
"set linebreak
"
"set laststatus=2
"
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%<73v.\%>72v/
"
"" Highlights trailing whitespaces
""autocmd InsertEnter * syn clear EOLS | syn match EOLS excludenl /\s\+\%#\@!$/
""autocmd InsertLeave * syn clear EOLS | syn match EOLS excludenl /\s\+$/
""highlight EOLS ctermbg=green guibg=green
"
"" Templates and template completion
"if has("autocmd")
"  augroup autoinsert
"    au!
"    autocmd BufNewFile *.c call s:Template("c")
"    autocmd BufNewFile *.cc call s:Template("cc")
"    autocmd BufNewFile *.cpp call s:Template("cc")
"    autocmd BufNewFile *.h call s:Template("h")
"    autocmd BufNewFile *.hh call s:Template("hh")
"    autocmd BufNewFile Makefile call s:Template("make")
"    autocmd BufNewFile *.sh call s:Template("sh")
"  augroup END
"endif
"
"function s:Template(argument)
"  " First delete all in the current buffer
"  %d
"
"  if (a:argument == "make")
"    0r ~/.vim/templates/Makefile
"  elseif (a:argument == "c")
"    0r ~/.vim/templates/skeleton.c
"  elseif (a:argument == "cc")
"    0r ~/.vim/templates/skeleton.cc
"  elseif (a:argument == "h")
"    0r ~/.vim/templates/skeleton.h
"  elseif (a:argument == "hh")
"    0r ~/.vim/templates/skeleton.hh
"  elseif (a:argument == "sh")
"    0r ~/.vim/templates/skeleton.sh
"  endif
"  silent %!~/.vim/scripts/do_header %
"endfunction
"
"command! -nargs=1 Template call s:Template()
"
"set cursorline
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"
"" Trailing whitespace
"set list
"set listchars=tab:>-,trail:.
"
"" Commenting blocks of code.
"autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"autocmd FileType conf,fstab       let b:comment_leader = '# '
"autocmd FileType tex              let b:comment_leader = '% '
"autocmd FileType mail             let b:comment_leader = '> '
"autocmd FileType vim              let b:comment_leader = '" '
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
