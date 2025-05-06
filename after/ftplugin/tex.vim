" Description: TeX settings

" Section: Abbreviations
call abbrTexMd#loadAbbr()

" Section: Commands
command TeXPDF execute "! lualatex --output-directory=%:p:h %:p"
nnoremap <localleader>ef :TeXPDF<cr>

" Section: Settings
call writingSettings#writer()
