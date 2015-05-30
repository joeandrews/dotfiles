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
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/Align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'powerline/powerline'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'moll/vim-node'
Plug 'walm/jshint.vim'
Plug 'lfilho/cosco.vim'
Plug 'airblade/vim-gitgutter'
Plug 'shinokada/autoswap_mac'
Plug 'lambdalisue/vim-fullscreen'
Plug 'pangloss/vim-javascript'
Plug 'Valloric/YouCompleteMe', { 'do' : './install.sh' }
"Plug 'majutsushi/tagbar'

" Js plugins...
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'rschmukler/pangloss-vim-indent'
Plug 'vim-scripts/SyntaxComplete'
Plug 'marijnh/tern_for_vim', { 'do' : 'npm install' }

call plug#end()
