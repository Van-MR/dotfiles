set shell=/bin/zsh
"设置LEADER键
let mapleader = " "

" ------Standard Bindings basic file operation------
" Basic file system commands
"nnoremap <C-t> :!touch<Space>
"nnoremap <C-e> :!crf<Space>
"nnoremap <C-d> :!mkdir<Space>
"nnoremap <C-m> :!mv<Space>%<Space>
"
"git graph
nnoremap gv :GV<CR>

"commentary
vnoremap <space>/ :Commentary<CR>

"杜绝方向键,移动右手到方向键纯属浪费时间
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"map  esc
map <C-c> <Esc>
" go normal mode
imap <silent> jj <Esc>

" Enable Disable Auto Indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

" move line up and down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" select functin
nnoremap <Leader>vf va{V


"swtich tabs
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>

"打开airline智能tab
let g:airline#extensions#tabline#enabled = 1
"set clipboard=unnamed
"
"去空行
noremap <S-Space> :g/^\s*$/d<CR>
map <S-Space> gg=G

"html标签自动补全
map! <C-O> <C-Y>,

" 开头 结尾 跳转
noremap <LEADER>e %

"修改快捷键  按键
map S :w<CR>   "保存
map Q :q<CR>   " 修改:q 回车退出
noremap <C-c> zz
map s <nop>    "去除s键删除插入功能

noremap J 5j
noremap K 5k

" 行首 行尾 0, $  太远
noremap <silent> H 0
noremap <silent> L $

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y


" 快速行内移动
"noremap W 5w
noremap B 5b

noremap <C-s> *

" 在当前窗口下方打开一个终端
noremap <LEADER>/ :set splitbelow<CR>:sp<CR>:term<CR>
" switch to normal mode in terminal
tnoremap <Esc> <C-\><C-n>

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

" find and replace 全局查找替换模式
noremap \s :%s//g<left><left>

" Folding
noremap <silent> <LEADER>o za


" 打开neovim配置文件
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" Open Startify界面
noremap <LEADER>ss :Startify<CR>

" Folding
noremap <silent> <LEADER>o za
