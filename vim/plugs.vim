" install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

"___ VISUALS
Plug 'arcticicestudio/nord-vim' "________________________________ theme
Plug 'lilydjwg/colorizer' "______________________________________ colorizer
Plug 'vim-airline/vim-airline' "_________________________________ bottom status line
Plug 'Yggdroot/indentLine' "_____________________________________ indentation markers
Plug 'airblade/vim-gitgutter' "__________________________________ visual git indication on sign column
Plug 'ntpeters/vim-better-whitespace' "__________________________ mark trailing whitespace
Plug 'mg979/vim-xtabline' "______________________________________ show buffers on top bar
Plug 'RRethy/vim-illuminate' "___________________________________ highlight all word under cursor

"___ TOOLS: NAVIGATION
Plug 'mhinz/vim-startify' "______________________________________ start screen
Plug 'scrooloose/nerdtree' "_____________________________________ nerdtree file tree
Plug 'Xuyuanp/nerdtree-git-plugin' "_____________________________ nerdtree git integration
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "____________ fzf
Plug 'junegunn/fzf.vim' "________________________________________ fzf
Plug 'unblevable/quick-scope' "__________________________________ Text Navigation with f

"___ TOOLS: AUTOMATION
Plug 'tpope/vim-commentary' "____________________________________ comment code
Plug 'jiangmiao/auto-pairs' "____________________________________ auto complete brackets
Plug 'tpope/vim-repeat' "________________________________________ fix partial repeat in some plugins
Plug 'liuchengxu/vim-which-key' "________________________________ leader key config and preview
Plug 'tpope/vim-surround' "______________________________________ easy surround

"___ TOOLS: CODE
Plug 'neoclide/coc.nvim', {'branch': 'release' } "_______________ auto completion
Plug 'tpope/vim-fugitive' "______________________________________ run git commands with :Git
Plug 'APZelos/blamer.nvim' "_____________________________________ show blame inline
Plug 'HerringtonDarkholme/yats.vim' "____________________________ typescript syntax highlighting

"___ TEXT OBJECTS
Plug 'vim-scripts/argtextobj.vim'

"___ TO TRY
" Plug 'tpope/vim-eunuch' "________________________________________ shell commands
" Plug 'wesQ3/vim-windowswap' "____________________________________ swap windows easly
" Plug 'mattn/vim-gist' "__________________________________________ gist creation
call plug#end()

" Install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
