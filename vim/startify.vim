let g:startify_custom_header = [
      \ '',
      \ '     ██  ██     ███    ██ ███████  ██████  ██    ██ ██ ███    ███     ██  ██',
      \ '    ██  ██      ████   ██ ██      ██    ██ ██    ██ ██ ████  ████      ██  ██',
      \ '   ██  ██       ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██       ██  ██',
      \ '    ██  ██      ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██      ██  ██',
      \ '     ██  ██     ██   ████ ███████  ██████    ████   ██ ██      ██     ██  ██',
      \ '',
      \]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent']                        },
          \ { 'type': 'dir',       'header': ['   '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 0

" let g:webdevicons_enable_startify = 1

" function! StartifyEntryFormat()
"         return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"     endfunction

let g:startify_bookmarks = [
            \ { 'i': '~/.dotfiles/init.vim' },
            \ { 'z': '~/.dotfiles/zshrc' },
            \ ]

let g:startify_enable_special = 0
