" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"Author: Vanisher

"Always source these
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

"===plugin config file
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/themes/oceanNext.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/fugitive.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/muliple-cursor.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/rainbow-parentheses.vim
source $HOME/.config/nvim/plug-config/bookmarks.vim
source $HOME/.config/nvim/plug-config/undotree.vim
source $HOME/.config/nvim/plug-config/coc.vim

"===markdown配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
au BufRead,BufNewFile *.{htm}   set filetype=html


"===================================== JavaScript ==================================================
"js加强补全----------------------------------------------------------------
let g:vimjs#casesensistive = 1
" Enabled by default. flip the value to make completion matches case insensitive
let g:vimjs#smartcomplete = 0
" Disabled by default. Enabling this will let vim complete matches at any location
" e.g. typing 'ocument' will suggest 'document' if enabled.
let g:vimjs#chromeapis = 0
" Disabled by default. Toggling this will enable completion for a number of Chrome's JavaScript extension APIs
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


"javascript html5 API补全插件
let g:jscomplete_use = ['dom', 'html5API', 'webGL']
let g:jscomplete_webgl_ns = 'webgl'
let g:javascript_plugin_jsdoc = 1


let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1



"===================================== TypeScript ==================================================
let g:typescript_indent_disable  =  1
let g:typescript_compiler_binary  =  ' tsc '
let g:typescript_compiler_options  =  '--lib es6'
autocmd FileType typescript :set makeprg=tsc
" typescript syntax
let g:yats_host_keyword = 1


" 语法检查
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>


"GV
nnoremap gv :GV<CR>


" === MarkdownPreview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

"

" =============    indentLine 代码缩进线标志线 ==================================================
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
"映射到ctrl+i键
map <C-d> :IndentLinesToggle<CR>

" ===Ag
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"
nnoremap <Leader>F :Ag<space>

" ===commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>


"===================================== tabular ==================================================
let g:tabular_loaded = 1

" === goyo
map <LEADER>G :Goyo<CR>

" === eleline.vim
let g:airline_powerline_fonts = 1

" === Colorizer  color preview
let g:colorizer_syntax = 1

" === rainbow
" let g:rainbow_active = 1

"fzf
 nnoremap <leader>f :Files<CR>
 nnoremap <leader>b :Buffers<CR>
 nnoremap <leader>ag :Ag 
 nnoremap <leader>t :Tags<CR>
 nnoremap <leader>m :Marks<CR>

"Anzu
 set statusline=%{anzu#search_status()}
 nnoremap = n
 nnoremap - N

" === BufferOnly =======
 noremap bo :Bufonly<CR>

"quickscope.vim
 let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
 highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
 highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
 let g:qs_max_chars=150


"auto save
 let g:auto_save = 0
 let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Float Term
 nnoremap <leader>t :FloatermNew<CR>
 nnoremap <leader>r :FloatermNew lf<CR>
