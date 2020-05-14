let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

" set colorscheme dark mode
"set background=dark    
"colorscheme codedark
"let g:deus_termcolors=256

let g:sierra_Pitch = 1
"let g:sierra_Midnight = 1
"let g:sierra_Twilight = 1
"let g:sierra_Sunset = 1
colorscheme sierra
"
"colorscheme orbital

syntax enable
"colorscheme tender

"let g:lightline = { 'colorscheme': 'tender' }
let g:lightline = { 'colorscheme': 'sierra' }


" ===AirineTheme 设置状态栏主题风格
"let g:airline_theme = 'tender'
let g:airline_theme = 'sierra'
"let g:airline_theme = 'orbital'
"let g:airline_theme = 'codedark'
"
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%t'
let g:airline#extensions#syntastic#enabled = 1 " Disable syntastic info
let g:airline#extensions#tagbar#enabled = 1 " Disable Tagbar info
let g:airline#extensions#tabline#enabled = 1
