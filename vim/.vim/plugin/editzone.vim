" editzone.vim
" Parameters related to the edition zone

" Relative numeration
if version < 703
  set number
else
  set relativenumber
endif

" Format the statusline
set laststatus=2
"set statusline=%f\ %{fugitive#statusline()}\ %l\|%c\ %m%=%p%%\ (%Y%R)
"let g:Powerline_symbols='fancy'
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)
set wildmenu
set hid
set noerrorbells
set novisualbell

set cursorline

if version >= 703
  set colorcolumn=+1
endif

set list
"set listchars=tab:.\ ,eol:¬,nbsp:␣,extends:↲
set listchars=tab:.\ ,nbsp:␣,extends:↲

" Set NERDTree size
let g:NERDTreeWinSize=35
