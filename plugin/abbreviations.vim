" Description: Abbreviation settings.

" ============================================================
" Section: Helper functions

" Function to 'eat' the space after an abbreviation (`:helpgrep Eatchar`)
func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc


" ============================================================
" LaTeX and Markdown: Load abbreviations file.

augroup filetype_latex_markdown
  autocmd!
  " Load `./autoload/abbrTexMd.vim`
  autocmd FileType tex,markdown :call abbrTexMd#loadAbbr()
augroup END


" ============================================================
" LaTeX, Markdown, reStructuredText: Load settings

augroup writing_ft
  autocmd!
  autocmd FileType tex,markdown,rst :call writingSettings#writer()
augroup END

