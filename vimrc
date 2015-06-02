set term=screen-256color
set t_Co=256
let g:hybrid_use_Xresources = 1

source ~/.vim/plug_settings.vim
source ~/.vim/plugin_config.vim
source ~/.vim/filetype_settings.vim

set guifont=Source\ Code\ Pro\ for\ Powerline:h14

set lazyredraw

" Store Temp Files Elsewhere
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp

" Indent Stuff
set smartindent
set tabstop=2
set shiftwidth=2

" Hide Scrollbar
set guioptions-=r

" Color Scheme Settings
color Tomorrow-Night

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

filetype plugin indent on
syntax on

" Line Numbers
set number

" Set for autoswap_mac
set title titlestring=

" Wrap long lines
set nowrap

set hlsearch

" Reload syntax highlighting
nmap <leader>x :syn off | syn on

" Turn off highlighting
nnoremap <leader><space> :noh<CR> :match none<CR>

" Disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Disable arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Insert 'binding.remote_pry'
inoremap <leader>p "binding.remote_pry"

" Disable help F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" If focus is lost on vim then save file
au FocusLost * :wa

" Hide autocomplete on cursor move
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Reselect the text that was just pasted
nnoremap <leader>v V`]

" Create a new vsplit, switch to it and open CtrlP
nnoremap <leader>w <C-w>v<C-w>l :CtrlP<CR>

" Create a new split, switch to it and open CtrlP
nnoremap <leader>s <C-w>s<C-w>j :CtrlP<CR>

" Change window movement commands
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Tab key matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Stupid shift key fixes
cmap W w

"Cosco Mappings
autocmd FileType javascript,css,YOUR_LANG nmap <silent> ,; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,YOUR_LANG inoremap <silent> ,; <ESC>:call cosco#commaOrSemiColon()"<CR>a

" Using Ctrl+c will make a new line for { }
imap <C-c> <CR><Esc>==O

"YouCompleteMe Options
"let g:ycm_add_preview_to_completeopt=0
"let g:ycm_confirm_extra_conf=0
"set completeopt-=preview

" Configure switch custom definitions.
let g:switch_custom_definitions=[
\        ['on', 'off'],
\        ['0', '1'],
\        ['yes', 'no'],
\        ['before', 'after'],
\        ['visible', 'hidden'],
\        ['block', 'none'],
\        ['!important', '/*!important*/']
\]

" Switch commands.
nmap <leader>- :Switch<CR>

" Match word that is under cursor
nnoremap <leader>ma :exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))<CR>

" toggle invisible characters
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪
nmap <leader>l :set list!<cr>

"set clipboard to be system clipboard
set clipboard=unnamed

" faster redrawing
set ttyfast
