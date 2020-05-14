" === fugitive

nnoremap <LEADER>ga :Git add %:p<CR><CR>
nnoremap <LEADER>gs :Gstatus<CR>
"nnoremap <LEADER>gb :Gblame<CR>
nnoremap <LEADER>gc :Gcommit -v -q<CR>
nnoremap <LEADER>gt :Gcommit -v -q %:p<CR>
nnoremap <LEADER>gd :Gdiff<CR>
nnoremap <LEADER>ge :Gedit<CR>
nnoremap <LEADER>gr :Gread<CR>
nnoremap <LEADER>gw :Gwrite<CR><CR>
nnoremap <LEADER>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <LEADER>gp :Ggrep<Space>
nnoremap <LEADER>gm :Gmove<Space>
nnoremap <LEADER>gb :Git branch<Space>
nnoremap <LEADER>go :Git checkout<Space>
nnoremap <LEADER>gps :Dispatch! git push<CR>
nnoremap <LEADER>gpl :Dispatch! git pull<CR>
