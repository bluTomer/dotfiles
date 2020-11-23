syntax on
colorscheme nord

autocmd BufRead,BufNewFile *.py let python_highlight_all=1

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" AIRLINE
let g:airline_extensions = ['branch', 'coc']
let g:airline#extensions#coc#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_right_sep = ''
let g:airline#extensions#default#layout = [['b', 'c'], ['z', 'warning', 'error']]
let g:airline_section_c = '' " don't show current file at the bottom

" GIT GUTTER
let g:gitgutter_sign_added              = '▎'
let g:gitgutter_sign_modified           = '▎'
let g:gitgutter_sign_removed            = '契'
let g:gitgutter_sign_removed_first_line = '契'
let g:gitgutter_sign_modified_removed   = '▎'
let g:gitgutter_preview_win_floating = 1

let g:gitgutter_enabled = 1

highlight GitGutterAdd    guifg=#587C0C ctermfg=2
highlight GitGutterChange guifg=#0C7D9D ctermfg=3
highlight GitGutterDelete guifg=#94151B ctermfg=1

" XTAB
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['buffers', 'tabs']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_lazy = 1
let g:xtabline_settings.show_right_corner = 0
let g:xtabline_settings.indicators = {
      \ 'modified': '+',
      \ 'pinned': '[📌]',
      \}

let g:xtabline_settings.icons = {
      \'pin': '📌',
      \'star': '*',
      \'book': '📖',
      \'lock': '🔒',
      \'hammer': '🔨',
      \'tick': '✔',
      \'cross': '✖',
      \'warning': '⚠',
      \'menu': '☰',
      \'apple': '🍎',
      \'linux': '🐧',
      \'windows': '⌘',
      \'git': '',
      \'palette': '🎨',
      \'lens': '🔍',
      \'flag': '🏁',
      \}

" ILLUMINATE
let g:Illuminate_ftblacklist = ['nerdtree']

" Semshi
let g:semshi#excluded_hl_groups = ['unresolved']
let g:semshi#error_sign = v:false

function MyCustomHighlights()
  hi semshiLocal           ctermfg=209 guifg=#D8DEE9
  hi semshiGlobal          ctermfg=214 guifg=#88C0D0
  hi semshiImported        ctermfg=214 guifg=#88C0D0 cterm=bold gui=bold
  hi semshiParameter       ctermfg=75  guifg=#D8DEE9 cterm=italic gui=italic
  hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
  hi semshiFree            ctermfg=218 guifg=#ffafd7
  hi semshiBuiltin         ctermfg=207 guifg=#B48EAD
  hi semshiAttribute       ctermfg=49  guifg=#00ffaf
  hi semshiSelf            ctermfg=249 guifg=#b2b2b2
  hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
  hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f0
endfunction
autocmd FileType python call MyCustomHighlights()
