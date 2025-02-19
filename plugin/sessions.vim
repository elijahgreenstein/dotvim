" ============================================================
" Overview: Shortcuts for creating, loading, and removing sessions.


" ============================================================
" Section: Setup

let s:sessiondir = $HOME . "/.vimsessions/"
let s:sessionhist = $HOME . "/.vimsessions/sessionhist.txt"


" ============================================================
" Section: Functions

function ShowSessionHistory()
  let sessionsList = readfile(s:sessionhist, '', 10)
  for line in sessionsList
    echo line
  endfor
endfunction

function UpdateSessionHistory(path)
  " Create session history if one does not exist
  if filereadable(s:sessionhist) == 0
    execute "silent !touch" s:sessionhist
  endif
  " Update session history
  let sessionsList = readfile(s:sessionhist, '', 10)
  execute "silent !echo \"" . a:path . "\" >" s:sessionhist
  for line in sessionsList
    if line != a:path
      execute "silent !echo \"" . line . "\" >>" s:sessionhist
    endif
  endfor
endfunction

function MakeSession(name)
  if (filewritable(s:sessiondir) != 2)
    exe "silent !mkdir -p " s:sessiondir
  endif
  let filename = s:sessiondir . a:name . ".vim"
  execute "mksession! " . filename
  call UpdateSessionHistory(filename)
  echo "Session saved: " filename
endfunction

function LoadSession(name)
  let sessionfile = s:sessiondir . a:name . ".vim"
  if (filereadable(sessionfile))
    execute "source " sessionfile
    call UpdateSessionHistory(sessionfile)
  else
    echo "No session named " a:name . ".vim"
  endif
endfunction

function RemoveSession(name)
  let sessionfile = s:sessiondir . a:name . ".vim"
  if (filereadable(sessionfile))
    execute "silent !rm " sessionfile
    echo "Session '" . a:name . "' removed"
  else
    echo "No session named " a:name . ".vim"
  endif
endfunction


" ============================================================
" Section: Commands

command -nargs=1 LoadSession call LoadSession("<args>")
command -nargs=1 Lds call LoadSession("<args>")
command -nargs=1 MakeSession call MakeSession("<args>")
command -nargs=1 Mks call MakeSession("<args>")
command -nargs=1 RemoveSession call RemoveSession("<args>")
command -nargs=1 Rms call RemoveSession("<args>")
command ShowSessions call ShowSessionHistory()
command Shs call ShowSessionHistory()
command ViewSessions execute "echo expand('~/.vimsessions/*.vim')"
command Vws execute "ViewSessions"

