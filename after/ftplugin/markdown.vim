" Description: Markdown settings

" Section: Abbreviations
call abbrTexMd#loadAbbr()

" Section: Commands
command -bar Mhall %y+ | exe "silent !pbpaste | pandoc -f markdown -t html | pbcopy" | redraw!

" Section: Settings
call writingSettings#writer()
