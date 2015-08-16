" templates.vim
" Load a file template based on the file extension when creating a new file

"au BufNewFile * sil! 0r ~/.vim/templates/%:t
"au BufNewFile * sil! 0r ~/.vim/templates/%:e
au bufNewFile *.html 0r ~/.vim/templates/index.html
au bufNewFile *.c 0r ~/.vim/templates/skeleton.c
au bufNewFile *.h 0r ~/.vim/templates/skeleton.h
au bufNewFile *.cpp 0r ~/.vim/templates/skeleton.cc
au bufNewFile *.cc 0r ~/.vim/templates/skeleton.cc
au bufNewFile *.hxx 0r ~/.vim/templates/skeleton.hh
au bufNewFile *.hh 0r ~/.vim/templates/skeleton.hh
au bufNewFile Makefile 0r ~/.vim/templates/Makefile
"au bufNewFile beamer.tex 0r ~/.vim/templates/beamer.tex
au bufNewFile *.tex 0r ~/.vim/templates/latex.tex
au bufNewFile *.sh 0r ~/.vim/templates/script.sh
