if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 记住上次编辑的最后位置 下次打开文件时自动加载到该位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let &t_ut=''
set autochdir

filetype off
call plug#begin('~/.config/nvim/plugged')

" === navigation
Plug 'christoomey/vim-tmux-navigator'

"=== airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" === css && scss
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-vinegar'

" === nerdtree
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

" ===  git
Plug 'tpope/vim-fugitive'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" === html5
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'

" === snippets
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
"Plug 'SirVer/ultisnips'

" ===  Search
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

Plug 'mhinz/vim-startify'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'anyakichi/vim-surround'

" === markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'dkarter/bullets.vim', { 'for' :['markdown', 'vim-plug'] }

" === coc server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" === textObbjext
Plug 'kshenoy/vim-signature'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'gorodinskiy/vim-coloresque'
Plug 'kien/rainbow_parentheses.vim'

" === javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" === typescript
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats.vim'
Plug 'w0rp/ale'

" === tabbar
Plug 'godlygeek/tabular'

" === theme
Plug 'ayu-theme/ayu-vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'haishanh/night-owl.vim'

"====shell
"Plug 'shougo/vimshell.vim'
call plug#end()

filetype plugin indent on

"===================================== keybinding ==================================================

"设置LEADER键
let mapleader = " "

"杜绝方向键,移动右手到方向键纯属浪费时间
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" 行首 行尾 0, $  太远
noremap <C-h> 0
noremap <C-l> $

" 开头 结尾 跳转
noremap <LEADER>e %

"修改快捷键  按键
map S :w<CR>   "保存
noremap <C-c> zz
map s <nop>    "去除s键删除插入功能
map Q :q<CR>   " 修改:q 回车退出
noremap J 5j
noremap K 5k
"noremap H 5h
"noremap L 5l

" 快速行内移动
"noremap W 5w
noremap B 5b

" 在当前窗口下方打开一个终端
noremap <LEADER>/ :set splitbelow<CR>:sp<CR>:term<CR>

noremap <leader><CR> :nohlsearch<CR>  "清除搜索高亮标记

"设置分屏
map sl :set splitright<CR>:vsplit<CR>  "右分屏
map sh :set nosplitright<CR>:vsplit<CR>  "左分屏
map sk :set nosplitbelow<CR>:split<CR>  "上分屏
map sj :set splitbelow<CR>:split<CR>  "下分屏
"分屏移动
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

map sv <C-w>t<C-w>K  "横向分屏切换为垂直分屏
map sp <C-w>t<C-w>H  "垂直分屏切换为水平分屏

" 旋转窗口
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>

"分屏大小
map <up>  :res +5<CR>
map <down>  :res -5<CR>
map <left>  :vertical resize-5<CR>
map <right>  :vertical resize+5<CR>

"标签页设置
map tn :+tabnext<CR>
map tp :-tabpre<CR>
map te :tabe<CR>
map tc :tabc<CR>

" Open help by word under the cursor.
nnoremap <silent> <Leader>hh :<C-U>help <C-R><C-W><CR>
nnoremap <silent> <Leader>ht :<C-U>tab help <C-R><C-W><CR>

" 全选
map <Leader>sa ggVG"

" 选中段落
nnoremap <leader>v V`}

" 打开neovim配置文件
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" Open Startify
noremap <LEADER>st :Startify<CR>


" Ale static check
nnoremap <Leader>c :ALEToggle<CR>
nnoremap <Leader>J :ALENextWrap<CR>
nnoremap <Leader>K :ALEPreviousWrap<CR>
nnoremap <Leader>R :ALEFix<CR>

" Buffers mannager
nnoremap <Leader>[ :BuffergatorMruCyclePrev<CR>
nnoremap <Leader>] :BuffergatorMruCycleNext<CR>
nnoremap <Leader>b :BuffergatorOpen<CR>

" CtrlP
nnoremap <Leader>p :CtrlP<CR>

"===================================== keybinding ==================================================


if has("gui_running")
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    "set showtabline=0 " 隐藏Tab栏
endif

syntax on
set sw=4
set ts=4
set et
set smarttab
"set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set wildmenu
set mousemodel=popup
"set t_Co=256 "256位色"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关for NeoVim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if (empty($TMUX))

  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
    set termguicolors
  endif

"endif
"===================================== colorscheme ==================================================
syntax enable

" === ayu theme
"let ayucolor="dark"
"colorscheme ayu

" === nightowl theme
"colorscheme night-owl
"let g:lightline = { 'colorscheme': 'nightowl' }

" ===  solarized
"colorscheme solarized
"syntax enable
"set background=dark

" === material theme
colorscheme hybrid_reverse
"colorscheme hybrid_material
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
set background=dark


" ===AirineTheme 设置状态栏主题风格
"let g:airline_theme='hybrid'
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%t'
let g:airline#extensions#syntastic#enabled = 1 " Disable syntastic info
let g:airline#extensions#tagbar#enabled = 1 " Disable Tagbar info
let g:airline#extensions#tabline#enabled = 1

"===================================== colorscheme ==================================================

"===================================== edit configs ==================================================
" 禁止折行
set nowrap

set cul "高亮光标所在行
set ruler           " 显示标尺
set showcmd         " 输入的命令显示出来，看的清楚些
set scrolloff=2     " 光标移动到buffer的顶部和底部时保持3行距离
set laststatus=2   " 启动显示状态行(1),总是显示状态行(2)
"set foldenable      " 允许折叠
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=manual
" 启动 vim 时关闭折叠代码
set nofoldenable

set cursorline              " 突出显示当前行
set magic                   " 设置魔术
" 自动缩进
set autoindent
set cindent
set smartindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
"显示相对行号
set relativenumber
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch  "边输边高亮显示搜索词
set smartcase  "智能大小写 搜索
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=1
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=$,@,%,#,-,_

"===================================== edit configs ==================================================

" 字符间插入的像素行数目
"markdown配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
au BufRead,BufNewFile *.{htm}   set filetype=html

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
"打开airline智能tab
let g:airline#extensions#tabline#enabled = 1
"set clipboard=unnamed
"去空行
noremap <S-Space> :g/^\s*$/d<CR>
map <S-Space> gg=G

"html标签自动补全
map! <C-O> <C-Y>,

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    "autocmd BufReadPost *
                "\ if line("'\"") > 0 && line("'\"") <= line("$") |
                "\   exe "normal g`\"" |
                "\ endif
endif

" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全
set completeopt=preview,menu
"自动保存
set autowrite
" 去掉输入错误的提示声音
"set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"禁止生成临时文件
set noundofile
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse-=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

filetype plugin indent on
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"set tags=tags
set autochdir "输出时只有文件名，不带./ ../等目录前缀(默认了执行％在当前的目录下)
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=-
augroup END
let g:cssColorVimDoNotMessMyUpdatetime = 1


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


"===================================== RERD TREE  ==================================================
noremap tt :NERDTreeToggle<CR>
noremap tf :NERDTreeFind<CR>

let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = "N"
let NERDTreeMapUpdirKeepOpen = "n"
let NERDTreeMapOpenSplit = ""
let NERDTreeMapOpenVSplit = "I"
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapOpenInTabSilent = "O"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = ""
let NERDTreeMapChangeRoot = "l"
let NERDTreeMapMenu = ","
let NERDTreeMapToggleHidden = "zh"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

autocm StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeIgnore=['\~$', 'vendor', 'bin', 'obj', 'release', 'node_modules', 'bower_components', 'dist', 'coverage', 'documentation']



"===================================== Rainbow 括号高亮 ==================================================
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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

"===================================== multiple cursor ==================================================
" 多光标
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-j>'
let g:multi_cursor_prev_key='<C-k>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


"===================================== COC plugins && config ==================================================
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = [ 'coc-emmet', 'coc-html', 'coc-json', 'coc-css', 'coc-prettier' , 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-eslint', 'coc-snippets', 'coc-vetur']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()

" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> df <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <leader> rn <Plug>(coc-rename)

" === coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <Leader>F :Prettier<CR>


"===================================== Startify ==================================================
let g:startify_lists = [
            \ { 'type': 'files',		 'header': ['	 MRU']						},
            \ { 'type': 'bookmarks', 'header': ['	 Bookmarks']			},
            \ { 'type': 'commands',	'header': ['	 Commands']			 },
            \ ]
"let g:startify_custom_header = [
"\ ' _   _        _  _          _____  _             _ ',
"\ '| | | |  ___ | || |  ___   |_   _|(_) _ __ ___  | |',
"\ '| |_| | / _ \| || | / _ \    | |  | ||  _   _ \ | |',
"\ '|  _  ||  __/| || || (_) |   | |  | || | | | | ||_|',
"\ '|_| |_| \___||_||_| \___/    |_|  |_||_| |_| |_|(_)',
"\ '',
"\ '',
"\]

"===================================== Git ==================================================
nnoremap gv :GV<CR>

" === fugitive
noremap gd :Gdiff<CR>
noremap gs :Gstatus<CR>
noremap gds :Gdiffsplit<CR>
noremap gc :Gcommit<CR>
noremap gr :Gread<CR>
noremap ge :Gedit<CR>
noremap gpu :Gpush<CR>
noremap gpl :Gpull<CR>
noremap grb :Grebase<CR>
noremap gmv :Gmove<CR>
noremap gde :Gdelete<CR>

" ===GitGutter
let g:gitgutter_max_signs = 1500  " default value

" === MarkdownPreview
"let g:mkdp_auto_start = 1
"let g:mkdp_auto_close = 1
"let g:mkdp_refresh_slow = 0
"let g:mkdp_command_for_global = 0
"let g:mkdp_open_to_the_world = 0
"let g:mkdp_open_ip = ''
"let g:mkdp_echo_preview_url = 0
"let g:mkdp_browserfunc = ''
"let g:mkdp_preview_options = {
			"\ 'mkit': {},
			"\ 'katex': {},
			"\ 'uml': {},
			"\ 'maid': {},
			"\ 'disable_sync_scroll': 0,
			"\ 'sync_scroll_type': 'middle',
			"\ 'hide_yaml_meta': 1
			"\ }
"let g:mkdp_markdown_css = ''
"let g:mkdp_highlight_css = ''
"let g:mkdp_port = ''
"let g:mkdp_page_title = '「${name}」'

" ===indentLine 代码缩进线标志线
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
"映射到ctrl+i键
map <C-d> :IndentLinesToggle<CR>

"===================================== ale syntatic checked ==================================================
let g:ale_javascript_eslint_executable = 'eslint_d' "Faster implementation
let g:ale_lint_on_text_changed="normal" "Lint on normal mode
let g:ale_reason_ols_executable = '/usr/local/bin/reason-language-server'
let g:ale_linters = {
      \ 'javascript': ['flow', 'eslint'],
      \ 'reason': ['ols'],
      \}
let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'reason': ['refmt'],
      \}
let g:ale_fix_on_save = 1

"===================================== signature  标签快捷键配置 ==================================================
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "m>",
        \ 'GotoPrevMarker'     :  "m<",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

"===================================== Buffergator ==================================================
let g:buffergator_display_regime = "parentdir"
let g:buffergator_expand_on_split = 0

" ===CtrlP ignore  设置忽略的文件目录搜索
set wildignore+=*/node_modules/*,*/dist/*,*/bower-components/*

" ===Ag
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"
nnoremap <Leader>f :Ag<space>

"===================================== Tmux ==================================================
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <Ctrl>space h :TmuxNavigateLeft<cr>
nnoremap <silent> <Ctrl>space j :TmuxNavigateDown<cr>
nnoremap <silent> <Ctrl>space k :TmuxNavigateUp<cr>
nnoremap <silent> <Ctrl>space l :TmuxNavigateRight<cr>
nnoremap <silent> <Ctrl>space p :TmuxNavigatePrevious<cr>
nnoremap <silent> <Ctrl>space n :TmuxNavigateNext<cr>

"===================================== tabular ==================================================
let g:tabular_loaded = 1

