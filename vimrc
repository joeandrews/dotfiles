"color Tomorrow-Night

set t_Co=256
let g:hybrid_use_Xresources = 1

source ~/.vim/vundle.vim
source ~/.vim/plugin_config.vim
source ~/.vim/filetype_settings.vim

set guifont=Source\ Code\ Pro\ for\ Powerline:h12

" Store Temp Files Elsewhere
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Disable that auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

color hybrid

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

filetype plugin indent on
syntax on

set number

" wrap long lines
set nowrap

" Reload syntax highlighting
nmap <leader>x :syn off | syn on

"Turn off highlighting
nnoremap <leader><space> :noh<cr>

"disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


inoremap <leader>p "binding.remote_pry"

"Disable help F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"If focus is lost on vim then save file
au FocusLost * :wa

"strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

nnoremap <leader>a :Ack 

"Reselect the text that was just pasted
nnoremap <leader>v V`]

"create a new vsplit and switch to it
nnoremap <leader>w <C-w>v<C-w>l

"create a new split and switch to it
nnoremap <leader>s <C-w>s<C-w>j

"Change window movement commands
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Have rainbow parens always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Tab key matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Stupid shift key fixes
cmap W w

