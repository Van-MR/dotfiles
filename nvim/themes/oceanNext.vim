syntax on
set background=dark
" let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" ===lightline theme
let g:lightline = { 'colorscheme': 'oceanicnext' }

" ===AirineTheme 设置状态栏主题风格
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%t'
let g:airline#extensions#syntastic#enabled = 1 " Disable syntastic info
let g:airline#extensions#tagbar#enabled = 1 " Disable Tagbar info
let g:airline#extensions#tabline#enabled = 1

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
