" NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['dist', 'node_modules', '.git', '__pycache__']
let g:webdevicons_enable_nerdtree = 1
let NERDTreeRespectWildIgnore = 1
let g:NERDTreeWinSize = 60

" QUICKSCOPE
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=250
