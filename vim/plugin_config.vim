"""""""""""""""""""""""""""
" PowerLine
"""""""""""""""""""""""""""
if isdirectory("/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/")
  python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages")
  python from powerline.vim import setup as powerline_setup
  python powerline_setup()
  python del powerline_setup
endif

"""""""""""""""""""""""""""
" Ctags
"""""""""""""""""""""""""""
nnoremap <leader>c :TagbarToggle<CR>
"let g:tagbar_type_javascript = {
    "\ 'ctagsbin' : '/usr/local/share/npm/bin/jsctags'
"\ }

"""""""""""""""""""""""""""
" Ctrl-P
"""""""""""""""""""""""""""
if has("gui_running")
  macmenu &File.New\ Tab key=<D-S-t>
endif

set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules,lib-cov,public

let g:ctrlp_working_path_mode = 2

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <D-t> :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'

"""""""""""""""""""""""""""
" Indent Guides
"""""""""""""""""""""""""""
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup=1

"""""""""""""""""""""""""""
" NerdCommenter
"""""""""""""""""""""""""""
nnoremap <D-/> :NERDComToggleComment<CR>

"""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""
nnoremap <leader>n :NERDTreeToggle<CR>

"Show hidden files in NERDTree (files that start with period)
let NERDTreeShowHidden=1
let NERDTreeIgnore=['^components/', '^node_modules/']
"let NERDTreeHijackNetrw = 0
"autocmd vimenter * if !argc() | NERDTree | wincmd l | endif

"""""""""""""""""""""""""""
" Supertab
"""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"
set ofu=syntaxcomplete#Complete


set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
