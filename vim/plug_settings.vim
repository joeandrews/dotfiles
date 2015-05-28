call plug#begin('~/.vim/plugged')

" Themes:
Plug 'chriskempson/base16-vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'nanotech/jellybeans.vim'
Plug 'w0ng/vim-hybrid'

" Syntax Plugins
Plug 'othree/html5.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'elzr/vim-json'
Plug 'ap/vim-css-color'

" Utilities
Plug 'christoomey/vim-tmux-navigator'
Plug 'kien/rainbow_parentheses.vim'
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/Align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'Lokaltog/powerline'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'moll/vim-node'
Plug 'walm/jshint.vim'
Plug 'lfilho/cosco.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
"Plug 'majutsushi/tagbar'

" Js plugins...
Bundle 'othree/yajs.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'rschmukler/pangloss-vim-indent'
Bundle 'vim-scripts/SyntaxComplete'
Bundle 'marijnh/tern_for_vim'

call plug#end()
