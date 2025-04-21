" Description: Markdown settings

" ============================================================
" Section: General settings

" Alternative format options, useful for CJK text
setlocal formatoptions+=mM]
"Alternative format options (do not autowrap, comment)
setlocal formatoptions-=t formatoptions-=c formatoptions-=r formatoptions-=o


" ============================================================
" Section: Mappings

" Undo points when typing punctuation
inoremap <buffer> ! !<C-g>u
inoremap <buffer> , ,<C-g>u
inoremap <buffer> . .<C-g>u
inoremap <buffer> : :<C-g>u
inoremap <buffer> ; ;<C-g>u
inoremap <buffer> ? ?<C-g>u


" ============================================================
" Section: Status line

" Use word count status line
if exists('*StatusLineLocalWordCount')
  call StatusLineLocalWordCount()
endif

