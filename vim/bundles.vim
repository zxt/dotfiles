set nocompatible  " be iMproved
filetype off      " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required!
Plugin 'VundleVim/Vundle.vim'

" one colorscheme pack to rule them all!
Plugin 'flazz/vim-colorschemes'

" solarized colorscheme for vim
Plugin 'altercation/vim-colors-solarized'

" a filesystem tree explorer
Plugin 'scrooloose/nerdtree'

" makes color handling easier
Plugin 'Rykka/colorv.vim'

" a git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" shows 'Nth match out of M' at every search (index of match+total # matches)
Plugin 'IndexedSearch'

" provides insert mode autocompletion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" syntax checking
Plugin 'scrooloose/syntastic'

" highlight matching HTML tags
Plugin 'gregsexton/MatchTag'

" ultimate auto-completion system for vim
Plugin 'Shougo/neocomplcache'

" syntax hightlight + improved indentation for javascript
Plugin 'pangloss/vim-javascript'

" syntax highlighting for jquery
Plugin 'itspriddle/vim-jquery'

" syntax highlighting for json
Plugin 'leshill/vim-json'

" CoffeeScript support for vim (syntax, indenting, etc.)
Plugin 'kchmck/vim-coffee-script'

" Scala support
Plugin 'derekwyatt/vim-scala'

" vimscript library of utility functions and commands for vim programming
Plugin 'L9'

" enable repeating supported plugin maps with "."
Plugin 'tpope/vim-repeat'

" markdown syntax highlighting
Plugin 'hallison/vim-markdown'

" flake8, static syntax and style checker for python
Plugin 'nvie/vim-flake8'

" cscope, for browsing source code
Plugin 'chazy/cscope_maps'
Plugin 'autoload_cscope.vim'

call vundle#end()
filetype plugin indent on " Automatically detect file types (must turn on after Vundle)
