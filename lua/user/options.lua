-- general
vim.opt.swapfile = false                     -- no swap files please
vim.opt.backup = false                       -- This is recommended by coc
vim.opt.clipboard = "unnamedplus"            -- Copy paste between vim and everything else
vim.opt.mouse = "a"                          -- Enable your mouse
vim.opt.encoding = "utf-8"                   -- Display encoding
vim.opt.fileencoding = "utf-8"               -- File encoding
vim.opt.lazyredraw = true                    -- Don't redraw while running macros
vim.opt.pumheight = 10                       -- Makes popup menu smaller
vim.opt.autoread = true                      -- autoload changed files
-- visuals
vim.opt.showmode = false                     -- We don't need to see things like -- INSERT -- anymore
vim.opt.cursorline = true                    -- Enable highlighting of the current line
vim.opt.number = true                        -- set numbered lines
vim.opt.relativenumber = false               -- set relative numbered lines
vim.opt.numberwidth = 2                      -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                   -- always show the sign column, otherwise it would shift the text each time
vim.opt.conceallevel = 0                     -- Don't hide characters in formatted files
vim.opt.laststatus = 2                       -- Always display the status line
vim.opt.showtabline = 2                      -- Always show tabs
vim.opt.shortmess:append "c"                 -- Don't pass messages to |ins-completion-menu|.
-- search
vim.opt.ignorecase = true                    -- Ignore case in searches
vim.opt.smartcase = true                     -- Don't ingnore case if casing is used
vim.opt.incsearch = true                     -- Start searching as you type
-- tabs
vim.opt.smarttab = true                      -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.expandtab = true                     -- Converts tabs to spaces
vim.opt.tabstop = 2                          -- Insert 2 spaces for a tab
-- indent
vim.opt.smartindent = true                   -- Makes indenting smart
vim.opt.shiftwidth = 2                       -- Change the number of space characters inserted for indentation
-- navigation
vim.opt.splitbelow = true                    -- Horizontal splits will automatically be below
vim.opt.splitright = true                    -- Vertical splits will automatically be to the right
vim.opt.scrolloff = 4                        -- Scroll vertical buffer from cursor pos
vim.opt.sidescrolloff = 4                    -- Scroll horizontal buffer from cursor pos
vim.opt.iskeyword:append "-"                 -- Dash doesn't separates keywords
vim.opt.wildignore:append "*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*" -- Don't find these find using wildcards
-- autocompletion
vim.opt.updatetime = 300                     -- faster completion (4000ms default)
vim.opt.formatoptions = "tqj"                -- Stop newline continution of comments
