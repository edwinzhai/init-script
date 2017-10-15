set cindent
"turn on indent every time editing C file
"colo darkblue
"colo elflord
"colo torte
filetype indent plugin on
"always use cindent
"set smartindent
"set autoindent
set incsearch
set hlsearch
set sc
set ch=1
set mouse=a
"vi in screen can't use mouse because of $term setting, this is a work around, no need for "screen -T xterm"
set ttymouse=xterm
set ignorecase smartcase
set cmdheight=1
set showcmd
set nu
nmap Y y$
"nmap <C-m> :noh<CR>

noremap <C-e> 3<C-e>
noremap <C-y> 3<C-y>

"use not J but CTRL-j to joint 2 lines
nmap J j
noremap <C-j> J

"short cut for paste the last copy result on insert/command-line/lang-arg mode
cmap <C-e> <C-r>"
map! <C-e> <C-r>"

"map C-w p as jump to preview window
map <C-w>p <C-w>P
"map C-w e as jump to buffer window
map <C-w>e <C-w>t <C-w>j
set previewheight=15

"use arrow key to navigate window
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

"avoid C-z to quit wiout saving: can use fg back to vi
"map <C-z> i <Esc>l
"add brace function
noremap ( wbi(<Esc>ea)<Esc>

set nocompatible

"set smartcase for searching
set ignorecase smartcase

"set the indent for xen
set shiftwidth=4
set softtabstop=4
set expandtab

"if smarttab, the <BS> will delete 'sw' spaces not the 'sts' spaces
"if nosmarttab, should use <,> & ^T,^D to do the indent
"set smarttab


"****quilt or hg shortcuts
nmap <C-\>a :!quilt add <C-R>%

"****taglist config
"let Tlist_Auto_Open = 0
"let Tlist_Show_One_File = 1
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_SingleClick = 1 "may conflict with the minibuf sigle click
"set updatetime=1000 "update the current symbol per 1 second
"
""****minibuf config
"let loaded_minibufexplorer = 1
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplModSelTarget = 1 "void chose a system buf(nonmodifiable)
"let g:miniBufExplorerMoreThanOne = 2 " if 2--open 2nd window err; if 1--close last window err.
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavArrows = 1
"
"let winManagerWindowLayout = 'TagList|BufExplorer'
"let g:winManagerWidth = 30
"
""map for the winmanager window
"map <c-w><c-m> :WMToggle<cr>
"map <c-w>m :WMToggle<cr>

"
" vim-plugin as plugin manager
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/after/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

Plug 'ctrlpvim/ctrlp.vim'

"disabled due to no ctags on windows
Plug 'vim-scripts/taglist.vim'

Plug 'tpope/vim-commentary'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

"hotkey for auto installed plugin
"nmap <C-m> :CtrlP<CR>
let g:ctrlp_map = '<c-m>'
let g:ctrlp_cmd = 'CtrlPMRU'

let Tlist_Show_One_File = 1
