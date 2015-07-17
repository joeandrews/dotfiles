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
let g:tagbar_type_javascript = {
	\ 'ctagsbin' : '/usr/local/share/npm/bin/jsctags'
\ }

"""""""""""""""""""""""""""
" Ctrl-P
"""""""""""""""""""""""""""
set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules,lib-cov,public

let g:ctrlp_working_path_mode = 2

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <D-t> :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
" let g:ctrlp_custom_ignore = {
"             \ 'dir': '\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
"             \ 'file': '\.exe$\|\.so$'
"             \ }
" only show files that are not ignored by git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

""""""""""""""""""""
"  Ag Silver Searcher
""""""""""""""""""""
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup
    let g:grep_cmd_opts = '--line-numbers --noheading'

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    "let g:ctrlp_user_command = 'ag %s -l -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
    ca Ag Ag!
endif

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

" Hide files by extension and folder
let NERDTreeIgnore=['^components/', '^node_modules/', '\.DS_Store$', '\.js.map$']

" Close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""
" Supertab
"""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"
set ofu=syntaxcomplete#Complete


set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"""""""""""""""""""""""""""
" Javascript plugins
"""""""""""""""""""""""""""
let g:used_javascript_libs = 'angularjs,jquery,jasmine'

"""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""

let g:syntastic_javascript_checkers = ['jshint', 'jscs']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <Leader>{ :lprev<CR>
nnoremap <Leader>} :lnext<CR>



""""""""""""""""""""
"  SyntaxComplete
""""""""""""""""""""
 if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
    \	if &omnifunc == "" |
    \		setlocal omnifunc=syntaxcomplete#Complete |
    \	endif
endif


""""""""""""""""""""
"  IncSearch
""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay

""""""""""""""""""""
"  Fugitive
""""""""""""""""""""
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

""""""""""""""""""""
"  Airline (To be setup)
""""""""""""""""""""
" airline options
" let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline_theme='base16'
