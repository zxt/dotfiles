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

" cscope, for browsing source code
Bundle 'chazy/cscope_maps'
Bundle 'autoload_cscope.vim'

filetype plugin indent on " Automatically detect file types (must turn on after Vundle)
