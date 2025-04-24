" Description: Abbreviations for TeX and Markdown.

function abbrTexMd#loadAbbr()
  " ============================================================
  " General

  " ------------------------------------------------------------
  " Various Vim specific
  iab <buffer> lfold %{{{<CR><CR>%>>><Up><C-R>=Eatchar('\s')<CR>

  " ------------------------------------------------------------
  " Various TeX
  iab <buffer> le }<C-R>=Eatchar('\s')<CR>

  " ------------------------------------------------------------
  " Sections
  iab <buffer> lsec \section<C-R>=Eatchar('\s')<CR>
  iab <buffer> lsubsec \subsection<C-R>=Eatchar('\s')<CR>
  iab <buffer> lsubsub \subsubsection<C-R>=Eatchar('\s')<CR>

  " ------------------------------------------------------------
  " Formatting
  iab <buffer> lbf \textbf<C-R>=Eatchar('\s')<CR>
  iab <buffer> lem \emph<C-R>=Eatchar('\s')<CR>
  iab <buffer> lsc \textsc<C-R>=Eatchar('\s')<CR>

  " ------------------------------------------------------------
  " Lists
  iab <buffer> lbe \begin{enumerate}[noitemsep]<cr>\item <cr>\end{enumerate}<Up><Right><Right><C-R>=Eatchar('\s')<CR>
  iab <buffer> lbi \begin{itemize}[noitemsep]<cr>\item <cr>\end{itemize}<Up><Right><Right><C-R>=Eatchar('\s')<CR>
  iab <buffer> lI \item

  " ------------------------------------------------------------
  " Environments
  iab <buffer> lba \begin{align}<cr>\end{align}<Up><Right><Right><C-R>=Eatchar('\s')<CR>
  iab <buffer> lbq \begin{quote}<cr>\end{quote}<Up><Right><Right><C-R>=Eatchar('\s')<CR>


  " ============================================================
  " LaTeX Mathematics

  " ------------------------------------------------------------
  " General
  iab <buffer> $$ $$<Left><C-R>=Eatchar('\s')<CR>
  iab <buffer> lm $$<Left><C-R>=Eatchar('\s')<CR>
  iab <buffer> xrange X_1, \ldots, X_n<C-R>=Eatchar('\s')<CR>

  " ------------------------------------------------------------
  " Probability
  iab <buffer> mcov \mathsf{Cov}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> mexp \mathbb{E}[<C-R>=Eatchar('\s')<CR>
  iab <buffer> mprob \mathbb{P}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> mvar \mathsf{Var}(<C-R>=Eatchar('\s')<CR>

  " ------------------------------------------------------------
  " Random variab <buffer>les
  " Single
  iab <buffer> mber \mathsf{Ber}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> mberv \mathsf{Ber}(p)<C-R>=Eatchar('\s')<CR>
  iab <buffer> mex \mathsf{Exp}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> mexv \mathsf{Exp}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> mnorm \mathcal{N}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> mnorms \mathcal{N}(0, 1)<C-R>=Eatchar('\s')<CR>
  iab <buffer> mnormv \mathcal{N}(\mu, \sigma^2)<C-R>=Eatchar('\s')<CR>
  iab <buffer> mpoiss \mathsf{Poiss}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> mpoissv \mathsf{Poiss}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> munif \mathcal{U}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> munifs \mathcal{U}([0, 1])<C-R>=Eatchar('\s')<CR>
  iab <buffer> munifv \mathcal{U}([a, b])<C-R>=Eatchar('\s')<CR>
  " X ~ r.v.
  iab <buffer> xber X \sim \mathsf{Ber}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xberv X \sim \mathsf{Ber}(p)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xex X \sim \mathsf{Exp}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xexv X \sim mathsf{Exp}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xnorm X \sim \mathcal{N}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xnorms X \sim \mathcal{N}(0, 1)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xnormv X \sim \mathcal{N}(\mu, \sigma^2)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xpoiss X \sim \mathsf{Poiss}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xpoissv X \sim \mathsf{Poiss}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xunif X \sim \mathcal{U}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xunifs X \sim \mathcal{U}([0, 1])<C-R>=Eatchar('\s')<CR>
  iab <buffer> xunifv X \sim \mathcal{U}([a, b])<C-R>=Eatchar('\s')<CR>
  " Y ~ r.v.
  iab <buffer> yber Y \sim \mathsf{Ber}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> yvber Y \sim \mathsf{Ber}(p)<C-R>=Eatchar('\s')<CR>
  iab <buffer> yex Y \sim \mathsf{Exp}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> yexv Y \sim mathsf{Exp}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ynorm Y \sim \mathcal{N}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> ynorms Y \sim \mathcal{N}(0, 1)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ynormv Y \sim \mathcal{N}(\mu, \sigma^2)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ypoiss Y \sim \mathsf{Poiss}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> ypoissv Y \sim \mathsf{Poiss}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> yunif Y \sim \mathcal{U}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> yunifs Y \sim \mathcal{U}([0, 1])<C-R>=Eatchar('\s')<CR>
  iab <buffer> yunifv Y \sim \mathcal{U}([a, b])<C-R>=Eatchar('\s')<CR>
  " X_i...X_n ~(iid) r.v.
  iab <buffer> xsber X_1, \ldots, X_n \overset{i.i.d.}\sim \mathsf{Ber}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsberv X_1, \ldots, X_n \overset{i.i.d.} \sim \mathsf{Ber}(p)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsex X_1, \ldots, X_n \overset{i.i.d.} \sim \mathsf{Exp}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsexv X_1, \ldots, X_n \overset{i.i.d.} \sim mathsf{Exp}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsnorm X_1, \ldots, X_n \overset{i.i.d.} \sim \mathcal{N}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsnorms X_1, \ldots, X_n \overset{i.i.d.} \sim \mathcal{N}(0, 1)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsnormv X_1, \ldots, X_n \overset{i.i.d.} \sim \mathcal{N}(\mu, \sigma^2)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xspoiss X_1, \ldots, X_n \overset{i.i.d.} \sim \mathsf{Poiss}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xspoissv X_1, \ldots, X_n \overset{i.i.d.} \sim \mathsf{Poiss}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsunif X_1, \ldots, X_n \overset{i.i.d.} \sim \mathcal{U}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsunifs X_1, \ldots, X_n \overset{i.i.d.} \sim \mathcal{U}([0, 1])<C-R>=Eatchar('\s')<CR>
  iab <buffer> xsunifv X_1, \ldots, X_n \overset{i.i.d.} \sim \mathcal{U}([a, b])<C-R>=Eatchar('\s')<CR>
  " Y_i...Y_n ~(iid) r.v.
  iab <buffer> ysber Y_1, \ldots, Y_n \overset{i.i.d.}\sim \mathsf{Ber}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysberv Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathsf{Ber}(p)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysex Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathsf{Exp}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysexv Y_1, \ldots, Y_n \overset{i.i.d.} \sim mathsf{Exp}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysnorm Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathcal{N}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysnorms Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathcal{N}(0, 1)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysnormv Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathcal{N}(\mu, \sigma^2)<C-R>=Eatchar('\s')<CR>
  iab <buffer> yspoiss Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathsf{Poiss}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> yspoissv Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathsf{Poiss}(\lambda)<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysunif Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathcal{U}(<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysunifs Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathcal{U}([0, 1])<C-R>=Eatchar('\s')<CR>
  iab <buffer> ysunifv Y_1, \ldots, Y_n \overset{i.i.d.} \sim \mathcal{U}([a, b])<C-R>=Eatchar('\s')<CR>
endfunction

