" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

"=== airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  

" === css && scss
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-vinegar' 


" === nerdtree
Plug 'scrooloose/nerdtree'
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

" Genreal Highlighter  color
Plug 'jaxbot/semantic-highlight.vim'
Plug 'chrisbra/Colorizer' " Show colors with :ColorHighligh

" === snippets
Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'

" ===  Search && file management
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'osyo-manga/vim-anzu'

" tricks
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/BufOnly.vim'
Plug 'anyakichi/vim-surround'

" === markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'dkarter/bullets.vim', { 'for' :['markdown', 'vim-plug'] }

"writting
Plug 'junegunn/goyo.vim'

"autosave
Plug '907th/vim-auto-save'

"smooth scroll
Plug 'psliwka/vim-smoothie'

" === coc server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Undo Tree
Plug 'mbbill/undotree'

" === textObbjext
Plug 'kshenoy/vim-signature'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'gorodinskiy/vim-coloresque'
Plug 'kien/rainbow_parentheses.vim'

" Text Navigation
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'

"commentary
Plug 'tpope/vim-commentary'

" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" === javascript && typescript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats.vim'

 "=== Syntax highlighting
 Plug 'vim-pandoc/vim-pandoc-syntax'
 Plug 'voldikss/vim-floaterm'

" dress
Plug 'theniceboy/eleline.vim'
Plug 'bling/vim-bufferline'

" Other visual enhancement
Plug 'luochen1990/rainbow'
"Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'
Plug 'airblade/vim-rooter'

" === tabbar
Plug 'godlygeek/tabular'

" === colorscheme theme
Plug 'tomasiser/vim-code-dark'
Plug 'alessandroyorba/sierra'
Plug 'mhartington/oceanic-next'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
