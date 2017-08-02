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

