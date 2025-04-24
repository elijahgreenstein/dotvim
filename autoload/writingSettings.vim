" Description: Set up useful settings for writing

function writingSettings#writer()
  " Section: Mappings
  " Undo points when typing punctuation
  inoremap <buffer> ! !<C-g>u
  inoremap <buffer> , ,<C-g>u
  inoremap <buffer> . .<C-g>u
  inoremap <buffer> : :<C-g>u
  inoremap <buffer> ; ;<C-g>u
  inoremap <buffer> ? ?<C-g>u

  " Section: Spelling
  setlocal spell

  " Section: Status line
  " Use word count status line
  if exists('*StatusLineLocalWordCount')
    call StatusLineLocalWordCount()
  endif

  " Section: Text appearance and wrapping
  " Alternative format options, useful for CJK text
  setlocal formatoptions+=mM]
  "Alternative format options (do not autowrap, comment)
  setlocal formatoptions-=t formatoptions-=c formatoptions-=r formatoptions-=o
endfunction

