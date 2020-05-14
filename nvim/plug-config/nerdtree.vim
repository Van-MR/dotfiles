"===================================== RERD TREE  ==================================================
noremap tt :NERDTreeToggle<CR>
noremap tf :NERDTreeFind<CR>
noremap <Leader>ntr :NERDTreeRefreshRoot<CR>

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

" 未指定文件，如何在vim启动时自动打开NERDTree

" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" 不展示在nerdtree上的文件目录
let g:NERDTreeIgnore=['\~$', 'vendor', 'bin', 'obj', 'release', 'node_modules', 'bower_components', 'dist', 'coverage', 'documentation']

au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

