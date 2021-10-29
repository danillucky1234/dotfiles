set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Plugin manager
Plugin 'VundleVim/Vundle.vim'

" Online Markdown preview in browser
Plugin 'iamcco/markdown-preview.nvim'

" Tree Explorer for vim
Plugin 'preservim/nerdtree'

" Enable syntax highlighting in i3 config
Plugin 'PotatoesMaster/i3-vim-syntax', { 'for': 'i3' }

" Add colors to the files edited in vim
Plugin 'chrisbra/Colorizer'

" Highlight other uses of the current word under the cursor
Plugin 'RRethy/vim-illuminate'

" Emmet plugin for html/css
Plugin 'mattn/emmet-vim'

" Latex preview plugin
Plugin 'conornewton/vim-latex-preview'

" Comfortable commant large piece of code
Plugin 'tpope/vim-commentary'

call vundle#end()            
filetype plugin indent on    " re-enable filetype

" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" Appearance & feels
syntax on
set background=dark				" Notify the vim that background color of terminal is dark
set title						" Set the title of the window to titlestring
set nu rnu						" Show the line number relative to the current line
set ruler						" Show the line and column number of cursor position
set cursorline					" Highlight the current line where the cursor is
set cmdheight=1					" Make sure the cmd height is always one
set laststatus=1				" Keep the statusbar only when you have more than 2 windows
set colorcolumn=80				" Highlight column after 80 width (following the legacy)
set splitbelow					" Horizontal split will put the new window below the current
set splitright					" Vertical split will put the new window to the right
set updatetime=750				" Having longer updatetime (default 4s) leads to noticeable delays
set complete-=i					" Scan current and included files while performing autocomplete
set backspace=indent,eol,start	" Go to earlier line where the cursor is positioned at eol, sol and indent

" Backup & history
set undofile					" Maintain undo history between sessions
set undodir=~/.vim/undo-dir		" Override the default undo directory to ~/.vim/undo-dir
set undolevels=10000			" Maximum number of changes that can be undone
set noswapfile					" No swapfiles when new buffers are loaded
set wildmenu                    " Invoke a horizontal and unobtrusive little menu

" Set the backup directory
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

" Spaces, Tabs & Indent
set tabstop=4					" Number of visual <Space> per <Tab>
set softtabstop=0 noexpandtab	" Number of spaces per tab while performing editing operations
set autoindent					" Copy indent from current line when staring a new line
set shiftwidth=4				" Number of charaters in 1 tab

" Search
set nohlsearch					" Stop the highligting after the search is completed
set incsearch					" While searching, show where the pattern, as it was typed so far, matches
set ignorecase					" Ignore case in search patterns
set smartcase					" Override ignorecase option if the pattern contains any uppercase letters

" PLUGIN: NERDTree - Tree Explorer
let g:NERDTreeShowHidden = 1				" Toggle this setting by pressing I in NERDTree window
let g:NERDTreeAutoDeleteBuffer = 1          " Delete the NERDTree buffer when tree is closed
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['__pycache__']      " Things to hide in Explorer

" PLUGIN: Colorizer - To color colornames and codes
let g:colorizer_auto_filetype = 'css,html'          " Autoload Colorizer in files with specified filetypes
let g:colorizer_skip_comments = 1                   " Don't highlight codes in comments
let g:colorizer_colornames = 0                      " Don't highlight colornames


" PLUGIN: MarkdownPreview
let g:mkdp_auto_start = 1							" Auto start preview when open markdown file
let g:mkdp_auto_close = 1

" PLUGIN: Emmet
let g:user_emmet_install_global = 0					" Enable just for html/css
autocmd FileType html,css EmmetInstall

" Window Resizing, change the width of windows using {+, -}
nnoremap + :vertical resize +2<CR>
nnoremap - :vertical resize -2<CR>

" Switch colorschemes according to file type
autocmd BufEnter *    colorscheme badwolf
autocmd BufEnter *.md colorscheme molokai

" Switch off arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Make vimdiff beautiful
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" Easy navigation between splits to save a keystroke. Instead of `ctrl + w` then j, it's just ctrl + j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Ctags additional modification
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
