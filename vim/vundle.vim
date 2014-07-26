set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Themes
Bundle 'cseelus/sleepwalker-vim'
Bundle 'ap/vim-css-color'
Bundle 'chriskempson/base16-vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'

" Syntax Plugins
Bundle 'Valloric/YouCompleteMe'
Bundle 'wavded/vim-stylus'
Bundle 'othree/html5.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'darthdeus/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-rails'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'gblock0/vim-chino'
Bundle 'elzr/vim-json'

" Utilities
"Bundle 'majutsushi/tagbar'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'gregsexton/MatchTag'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/Align'
Bundle 'mattn/emmet-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-surround'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'The-NERD-Commenter'
Bundle 'moll/vim-node'
Bundle 'walm/jshint.vim'
Bundle 'lfilho/cosco.vim'
Bundle 'marijnh/tern_for_vim'
Bundle 'AndrewRadev/switch.vim'

"Snipmate stuff
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "gblock0/snipmate-nodejs"
