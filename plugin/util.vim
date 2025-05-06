" Description: Utilities
"
" Function to 'eat' the space after an abbreviation (`:helpgrep Eatchar`)
func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
