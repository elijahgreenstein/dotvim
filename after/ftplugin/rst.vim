" Description: reStructuredText settings

" Section: Settings
call writingSettings#writer()

" Section: Commands
" Quick headings
function AddRstHead(level)
  if index([1, 2, 3, 4], a:level) < 0
    echom "ERROR: Level must be 1, 2, 3, or 4."
  else
    let h_chars = {
          \ "1": "=",
          \ "2": "-",
          \ "3": "^",
          \ "4": '"',
          \}
    let width = 60
    execute "normal o"
    execute "normal" width "A" . h_chars[a:level]
  endif
endfunction

command -nargs=1 RstHead call AddRstHead(<args>)

nnoremap <buffer> <localleader>h1 :RstHead 1<cr>
nnoremap <buffer> <localleader>h2 :RstHead 2<cr>
nnoremap <buffer> <localleader>h3 :RstHead 3<cr>
nnoremap <buffer> <localleader>h4 :RstHead 4<cr>
