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
