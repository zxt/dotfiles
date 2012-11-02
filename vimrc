" ==================================================
" .vimrc
" @zxt
" ==================================================

set nocompatible  " be iMproved
filetype off      " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required!
Bundle 'gmarik/vundle'

" one colorscheme pack to rule them all!
Bundle 'flazz/vim-colorschemes'

" solarized colorscheme for vim
Bundle 'altercation/vim-colors-solarized'

" The ultimate vim statusline utility
Bundle 'Lokaltog/vim-powerline'

" a filesystem tree explorer
Bundle 'scrooloose/nerdtree'

" makes color handling easier
Bundle 'Rykka/colorv.vim'

" a git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'

" shows 'Nth match out of M' at every search (index of match+total # matches)
Bundle 'IndexedSearch'

" provides insert mode autocompletion for quotes, parens, brackets, etc.
Bundle 'Raimondi/delimitMate'

" syntax checking
Bundle 'scrooloose/syntastic'

" highlight matching HTML tags
Bundle 'gregsexton/MatchTag'

" ultimate auto-completion system for vim
Bundle 'Shougo/neocomplcache'

" syntax hightlight + improved indentation for javascript
Bundle 'pangloss/vim-javascript'

" syntax highlighting for jquery
Bundle 'itspriddle/vim-jquery'

" syntax highlighting for json
Bundle 'leshill/vim-json'

" CoffeeScript support for vim (syntax, indenting, etc.)
Bundle 'kchmck/vim-coffee-script'

" vimscript library of utility functions and commands for vim programming
Bundle 'L9'

" enable repeating supported plugin maps with "."
Bundle 'tpope/vim-repeat'

" markdown syntax highlighting
Bundle 'hallison/vim-markdown'

" flake8, static syntax and style checker for python
Bundle 'nvie/vim-flake8'

filetype plugin indent on " Automatically detect file types (must turn on after Vundle)

let mapleader="," " set , as <leader> key

" keep \ as alternate <leader> key
nmap \ ,

" --------------------
" vim-powerline
" --------------------
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 12,Inconsolata\ for\ Powerline\ Medium\ 12

" --------------------
" NERDTree
" --------------------
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
if has("autocmd")
  " auto open NERDTree if vim starts with no file specified
  autocmd vimenter * if !argc() | NERDTree | wincmd w | endif
  " close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif

" --------------------
" neocomplcache
" --------------------
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_auto_completion_start_length=1

" <CR>: close popup and save indent.
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
" <BS>: close popup and delete backword char.
inoremap <expr><BS> neocomplcache#smart_close_popup() . "\<C-h>"

" <TAB>/<S-TAB>: cycle through completions
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Enable omni completion.
if has("autocmd")
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
endif

" --------------------------------------------------
" Regular Vim configuration
" --------------------------------------------------

set background=dark
colorscheme solarized

syntax enable
set autoread            " Automatically reload changes if detected
set cf                  " Enable error files & error jumping
set clipboard+=unnamed  " Yanks go on clipboard instead
set autowrite           " Writes on various commands that takes one to another file
set history=100         " Number of things to remember in history

set timeout             " time out on :mappings and key codes
set timeoutlen=500     " time out on mappings after 500ms
set ttimeoutlen=100     " time out on key codes after 100ms

set wildmenu            " Turn on wild menu - cmd autocomplete with <TAB>
set wildmode=longest:full,list:full,full
set wildignore+=*.o,*.d,*.exe,*.class,*.pyc,*.pyo,.git,.svn " ignore searching these file extensions

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set whichwrap=<,>,[,]          " allow left and right arrow keys to wrap around lines
set noshowmode                 " don't show mode, vim-powerline takes care of it

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set ruler               " show line and column number of cursor
set number              " show line numbers on the left side of the screen
set nowrap              " visual line wrapping off
set textwidth=0         " disable max text width
set wrapmargin=0        " disable physical line wrapping
set laststatus=2        " always display status line
set showcmd             " show incomplete commands
set encoding=utf-8

set listchars=tab:>─,trail:…,eol:¬    "characters to use to represent unprintable characters

set autoindent          " makes lines inherit indentation from previous line
set expandtab           " use spaces instead of tabs
set shiftwidth=2        " number of spaces per autoindent
set softtabstop=2       " number of spaces per tab

set ignorecase          " case insensitive search
set smartcase           " override ignorecase if typing upper case letters
set incsearch           " show search as it is being matched
set hlsearch            " highlight search
set showmatch           " briefly jump to matching bracket

set noerrorbells        " don't make a beep when an error message shown
set visualbell          " use visual bell instead of beep for other errors
set t_vb=               " make visual bell do nothing, don't flash screen

set mousehide           " hide mouse when typing, only works in GUI
set mouse=a             " enable mouse in all modes

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Window splitting
nmap <silent> <leader>hs :split<CR>
nmap <silent> <leader>vs :vsplit<CR>

" trim trailing whitespace
map <leader>tws :%s/\s\+$//e<CR>

" map <F2> to toggle paste mode
" paste mode on stops vim from breaking pasted text indentation and such
" but resets other settings, so do not want it on all the time
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" map <F4> to toggle display of unprintable characters
nnoremap <F4> :set list! list?<CR>

" spellcheck, with words underlined instead of default block highlighting
" map <F7> to toggle on/off
set spelllang=en
hi clear SpellBad
hi SpellBad ctermfg=1 term=underline cterm=underline
hi clear SpellCap
hi SpellCap ctermfg=2 term=underline cterm=underline
hi clear SpellRare
hi SpellRare ctermfg=5 term=underline cterm=underline
hi clear SpellLocal
hi SpellLocal ctermfg=3 term=underline cterm=underline
map <F7> :set spell!<CR>
imap <F7> <ESC>:set spell!<CR>

" Execute python file being edited with <SHIFT> + e
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

if has("autocmd")
  "use 4 spaces for indentation in python
  autocmd FileType python setlocal shiftwidth=4 softtabstop=4

  autocmd FileType coffee setlocal shiftwidth=4 softtabstop=4

  " Jump to last cursor position when reopening a file
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

iab ymd <C-R>=strftime("%F")<CR>
iab #! #!/usr/bin/env
iab #i #include
