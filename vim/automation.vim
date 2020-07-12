" commentary
function! Comment()
  if (mode() == "n")
    execute "Commentary"
  else
    execute "'<,'>Commentary"
    call feedkeys('V')
  endif
 endfunction

" Blamer
let g:blamer_enabled = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' > '

" COC
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-sh',
  \ 'coc-lists',
  \ 'coc-pairs',
  \ 'coc-yaml',
  \ 'coc-python',
  \ 'coc-pyright',
  \ 'coc-svg',
  \ 'coc-vimlsp',
  \ 'coc-xml',
  \ 'coc-yank',
  \ 'coc-json',
  \ ]
  " \ 'coc-tasks',
  " \ 'coc-tsserver',
  " \ 'coc-html',
  " \ 'coc-css',
  " \ 'coc-emoji',
  " \ 'coc-cssmodules',
  " \ 'coc-marketplace',

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-kefinition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
