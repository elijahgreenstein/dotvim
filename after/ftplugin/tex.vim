" Description: TeX settings

command TeXPDF execute "! lualatex --output-directory=%:p:h %:p"
nnoremap <localleader>ef :TeXPDF<cr>

