" ============================================================
" Section: General

set colorcolumn=+1        "Column after textwidth will be highlighted
set display+=lastline     "Allow display of last part of line, not @@@
set hlsearch              "Enable search highlighting
set ignorecase            "Ignore case when searching
set incsearch             "Shows partial search matches
set guicursor=a:blinkon0  "Turn off cursor blink
set linebreak             "Avoid wrapping line in middle of word
set laststatus=2          "Always show last status
set list                  "Show white space characters as listchars
set listchars=eol:¬,tab:▸\ ,trail:~,extends:❯,precedes:❮,space:·
set number                "Absolute number of lines
set numberwidth=5         "Line numbers width (default is 4)
set relativenumber        "Relative number of lines other than current
set scrolloff=5           "Keep last five and top five lines visible
set showbreak=↪           "Character when line is wrapped
set textwidth=80          "Width for wrapping
set title                 "Terminal window title as 'titlestring'
set formatoptions=cq      "Wrap comments only, format comments w/ gq

augroup terminal          "Do not have line numbers when in Terminal window
  autocmd!
  au TerminalOpen * set nonumber norelativenumber
augroup END

augroup cursor_line       "Cursor line (only in active window)
  autocmd!
  au WinEnter * set cursorline
  au WinLeave * set nocursorline
augroup END

set guioptions-=e         " Use terminal-style tabline instead of GUI


" ============================================================
" Section: Tabs, spaces, indents

set autoindent            "New lines inherit previous indentation
set expandtab             "Enter tab char with CTRL-V<Tab>
set shiftround            "Round indent to multiple of 'shiftwidith'
set shiftwidth=2          "Spaces for each step of autoindent
set softtabstop=2         "Backspace treats two spaces like tab
set tabstop=2             "Insert two spaces for tab

