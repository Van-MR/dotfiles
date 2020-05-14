"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Prettier
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autosave
"disables autosave feature
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_async = 1

let g:prettier#quickfix_enabled = 0

nmap <Leader>P <Plug>(Prettier)

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" runs prettier on file formats
autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

