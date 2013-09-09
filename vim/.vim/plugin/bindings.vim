" bindings.vim
" Bindings parameters

inoremap <F1> <esc>
vnoremap <F1> <esc>
nnoremap <F1> <esc>
:set pastetoggle=<F1>

"nnoremap ; :
"vnoremap ; :
map ;' mz'aO<Esc>i#if 0<Esc>'zo<Esc>i#endif<Esc>
vmap ;' '<O<Esc>i#if 0<Esc>'>o<Esc>i#endif<Esc>

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Right> :wincmd l<CR>

"nmap <C-p> :tabprevious<CR>
"nmap <C-n> :tabnext<CR>
"
"map <C-p> :tabprevious<CR>
"map <C-n> :tabnext<CR>

"nmap <c-T> :tabnew<CR>
"imap <C-t> <Esc>:tabnew<CR>

nnoremap <Tab> :s/\v
vnoremap <S-Tab> :s/\v

nnoremap <silent> <F9> :NERDTreeToggle<CR>

"map <F4> :call g:ClangUpdateQuickFix()<CR>

command W execute 'silent w !sudo tee % > /dev/null'
command WQ execute 'silent wq !sudo tee % > /dev/null'

"noremap  <Up> ""
"noremap! <Up> <Esc>
"noremap  <Down> ""
"noremap! <Down> <Esc>
"noremap  <Left> ""
"noremap! <Left> <Esc>
"noremap  <Right> ""
"noremap! <Right> <Esc>
