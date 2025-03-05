" ============================================================
" Section: Netrw appearance

" General settings (default, except for numbered lines: `nu`)
let g:netrw_bufsettings = "noma nomod nu nobl nowrap ro"

" Place `tex` and `md` files at top of sort sequence
let g:netrw_sort_sequence = "[\\/]$,\\<core\\%(\\.\\d\\+\\)\\=\\>,\\.tex$,\\.md$,\\.h$,\\.c$,\\.cpp$,\\~\\=\\*$,*,\\.o$,\\.obj$,\\.info$,\\.swp$,\\.bak$,\\~$"

" Remove the directory banner (show it with `I`)
let g:netrw_banner=0

" Preview files in vertical split
let g:netrw_preview = 1

" Make tree display the default liststyle (change in netrw with `i`)
" let g:netrw_liststyle=3

" Set default window size to x% of page
" let g:netrw_winsize=20

