" ============================================================
" Overview: General Vim settings.
"
" ============================================================
" Section: Spelling

set spelllang=en_ca       "When `spell` is set, use Canadian English
set spelllang+=cjk        "Exclude CJK characters from spell check
" Set up custom word list for use with `zg` and `zw`
set spellfile=$HOME/.vim/spell/custom-dict.utf-8.add


" ============================================================
" Section: Filetypes, syntax highlighting

if !exists("g:syntax_on") "Enable syntax highlighting (loads once)
  syntax enable
endif

filetype plugin indent on "Enable file-type detection


" ============================================================
" Section: Buffers, splits

set hidden                "Hide abandoned buffers instead of closing
set splitbelow            "Split window below current one
set splitright            "Vertical split will open to right


" ============================================================
" Section: Backups, swaps
" Optionally set up personal directories for backup files and swap files

"set backupdir=~/.vimbackup,.,~/tmp,~/
"set directory=~/.vimswap,.,~/tmp,/var/tmp,/tmp


" ============================================================
" Section: Other

set autoread              "Reread file when outside changes detected
set encoding=utf-8        "Encoding (in Vim, in files) to UTF-8
set mouse=a               "Enable use of mouse on terminal

