" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
" let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>ag :Ag 
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>


