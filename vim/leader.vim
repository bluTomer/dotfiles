" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Show which key window when pressing leader key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" Colors
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator Type
highlight default link WhichKeyGroup     Type
highlight default link WhichKeyDesc      Function

let g:which_key_map['/'] = [ ':call Comment()'                    , 'comment' ]
let g:which_key_map['e'] = [ ':NERDTreeToggle'                  , 'NERD']
let g:which_key_map['h'] = [ '<C-W>s'                             , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                             , 'split right']
let g:which_key_map['x'] = [ '<C-W>q'                             , 'close split']
let g:which_key_map['w'] = [ ':w'                                  , 'write' ]
let g:which_key_map['q'] = [ ':q'                                 , 'quit file' ]
let g:which_key_map['Q'] = [ ':qa!'                               , 'quit all' ]
let g:which_key_map['d'] = [ ':bdelete'                           , 'delete buffer']
let g:which_key_map['b'] = [ ':b#'                                , 'alternate buffer']
" let g:which_key_map['f'] = [ ''                                   , 'Ag find']
map <Leader>f :Ag<space>
let g:which_key_map['p'] = [ ':Files'                             , 'open file']
let g:which_key_map[' '] = [ ":silent WhichKey '<Space>'<CR>"     , 'close which key']

" Random actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

call which_key#register('<Space>', "g:which_key_map")

