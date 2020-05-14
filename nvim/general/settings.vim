if (has("nvim"))
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" 记住上次编辑的最后位置 下次打开文件时自动加载到该位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 新文件自动生成作者信息说明注释
autocmd BufNewFile *.js exec ":call SetTitle()"
    func SetTitle()
        call setline(1,"/**")
        call append(line("."), " *   Copyright (C) ".strftime("%Y")." All rights reserved.")
        call append(line(".")+1, " *")
        call append(line(".")+2, " *   FileName      ：".expand("%:t"))
        call append(line(".")+3, " *   Author        ：Vanisher")
        call append(line(".")+4, " *   Email         ：vansjt1995@gmail.con")
        call append(line(".")+5, " *   Date          ：".strftime("%Y年%m月%d日"))
        call append(line(".")+6, " *   Description   ：")
        call append(line(".")+7, " */")
    endfunc
"自动将光标定位到末尾"
autocmd BufNewFile * normal G

let &t_ut=''
set autochdir

filetype off
filetype plugin indent on

"===================================== basic text editor configuation ==================================================
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
"" cursor
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

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

  " For Neovim 0.1.3 and 0.1.4
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"endif

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

set cursorline  " 突出显示当前行
"set cursorcolumn "突出显示当前列
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b 
highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b

set magic  " 设置魔术
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
" 显示行号 相对行号
set number relativenumber
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
" 使回格键（backspace）正常处理indent, eol, ntart等
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

set scrolloff=10

" replace yanked word
" binds: cpw, cpi(
nnoremap <silent> cp :let g:substitutemotion_reg = v:register
            \ <bar> set opfunc=SubstituteMotion<CR>g@

function! SubstituteMotion(type, ...)
	let l:reg = g:substitutemotion_reg
	if a:0
		silent exe "normal! `<" . a:type . "`>\"_c\<c-r>" . l:reg . "\<esc>"
	elseif a:type == 'line'
		silent exe "normal! '[V']\"_c\<c-r>" . l:reg . "\<esc>"
	elseif a:type == 'block'
		silent exe "normal! `[\<C-V>`]\"_c\<c-r>" . l:reg . "\<esc>"
	else
		silent exe "normal! `[v`]\"_c\<c-r>" . l:reg . "\<esc>"
	endif
endfunction



augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=-
augroup END
let g:cssColorVimDoNotMessMyUpdatetime = 1

" code folding
set foldmethod=syntax
" set foldlevelstart=-1
set nofoldenable

set spelllang=en

set shiftwidth=4
set tabstop=4

set incsearch
set ignorecase
set smartcase 

set formatoptions-=ro

set mouse=a

set splitbelow
set splitright

