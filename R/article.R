#--- NOTE to contributors ------------------------------------------------------
# Please order these format functions alphabetically.
#-------------------------------------------------------------------------------

#' R Markdown output formats for (journal) articles
#'
#' Most article formats are based on \code{rmarkdown::pdf_document()}, with a
#' custom Pandoc LaTeX template and different default values for other arguments
#' (e.g., \code{keep_tex = TRUE}).
#'
#' @section Details: You can find more details about each output format below.
#' @name acm_article
#' @rdname article
NULL

#' @section \code{acm_article}: Format for creating an Association for Computing
#'   Machinery (ACM) articles. Adapted from
#'   \url{http://www.acm.org/publications/article-templates/proceedings-template.html}.
#' @param
#'   ...,keep_tex,latex_engine,citation_package,highlight,fig_caption,md_extensions
#'   Arguments passed to \code{rmarkdown::\link{pdf_document}()}.
#' @return An R Markdown output format.
#' @examples \dontrun{
#' rmarkdown::draft("MyArticle.Rmd", template = "acm_article", package = "rticles")
#' rmarkdown::draft("MyArticle.Rmd", template = "asa_article", package = "rticles")}
#' @export
#' @rdname article
acm_article <- function(...) {
  pdf_document_format("acm_article", ...)
}

#' @section \code{acs_article}: Format for creating an American Chemical Society
#'   (ACS) Journal articles. Adapted from
#'   \url{http://pubs.acs.org/page/4authors/submission/tex.html}.
#' @export
#' @rdname article
acs_article <- function(
  ..., keep_tex = TRUE, md_extensions = c("-autolink_bare_uris"), fig_caption = TRUE
) {
  pdf_document_format(
    "acs_article", keep_tex = keep_tex, md_extensions = md_extensions,
    fig_caption = fig_caption, ...
  )
}

#' @section \code{aea_article}: Format for creating submissions to the American
#'   Economic Association (AER, AEJ, JEL, PP).
#' @export
#' @rdname article
aea_article <- function(..., keep_tex = TRUE, md_extensions = c("-autolink_bare_uris")) {
  pdf_document_format(
    "aea_article", keep_tex = keep_tex, md_extensions = md_extensions, ...
  )
}

#' @section \code{agu_article}: Format for creating a American Geophysical Union
#'   (AGU) article. Adapted from
#'   \url{https://publications.agu.org/author-resource-center/checklists-and-templates/}.
#' @export
#' @rdname article
agu_article <- function(
  ..., keep_tex = TRUE, citation_package = 'natbib',
  highlight = NULL, md_extensions = c("-autolink_bare_uris", "-auto_identifiers")
) {
  pdf_document_format(
    "agu_article", keep_tex = keep_tex, highlight = highlight,
    citation_package = citation_package, md_extensions = md_extensions, ...
  )
}

#' @section \code{amq_article}: Ce format a été adapté du format du bulletin de
#'   l'AMQ.
#' @export
#' @rdname article
amq_article <- function(
  ..., latex_engine = 'xelatex', keep_tex = TRUE, fig_caption = TRUE,
  md_extensions = c("-autolink_bare_uris")
) {
  pdf_document_format(
    "amq_article", latex_engine = latex_engine, highlight = NULL, keep_tex = keep_tex,
    md_extensions = md_extensions, fig_caption = fig_caption, ...
  )
}

#' @section \code{ams_article}: Format for creating an American Meteorological
#'   Society (AMS) Journal articles. Adapted from
#'   \url{https://www.ametsoc.org/ams/index.cfm/publications/authors/journal-and-bams-authors/author-resources/latex-author-info/}.
#' @export
#' @rdname article
ams_article <- function(..., keep_tex = TRUE, md_extensions = c("-autolink_bare_uris")) {
  pdf_document_format(
    "ams_article", keep_tex = keep_tex, md_extensions = md_extensions, ...
  )
}

#' @section \code{asa_article}: This format was adapted from The American
#'   Statistican (TAS) format, but it should be fairly consistent across
#'   American Statistical Association (ASA) journals.
#' @export
#' @rdname article
asa_article <- function(..., keep_tex = TRUE, citation_package = 'natbib') {
  pdf_document_format(
    "asa_article", keep_tex = keep_tex, citation_package = citation_package, ...
  )
}

#' @section \code{arxiv_article}: Adapted from the George Kour's format for
#'   arXiv and bio-arXiv preprints. So far as I'm aware, entirely
#'   unofficial but still a staple.
#' @export
#' @rdname article
arxiv_article <- function(..., keep_tex = TRUE) {
  pdf_document_format(
    "arxiv_article", keep_tex = keep_tex, ...
  )
}

#' @section \code{bioinformatics_article}: Format for creating submissions to a Bioinformatics journal. Adapted from
#' \url{https://academic.oup.com/bioinformatics/pages/submission_online}.
#' @export
#' @rdname article
bioinformatics_article <- function(..., keep_tex = TRUE, citation_package = 'natbib') {
  pdf_document_format(
    "bioinformatics_article", keep_tex = keep_tex, citation_package = citation_package,
    md_extensions = "-auto_identifiers",...
  )
}

#' @section \code{biometrics_article}: This format was adapted from the
#'   Biometrics journal.
#' @export
#' @rdname article
biometrics_article <- function(..., keep_tex = TRUE, citation_package = 'natbib') {
  pdf_document_format(
    'biometrics_article', keep_tex = keep_tex, citation_package = citation_package, ...
  )
}

#' @section \code{ctex}: A wrapper function for \code{rmarkdown::pdf_document()}
#'   and the default value of \code{latex_engine} is changed to
#'   \command{xelatex}, so it works better for typesetting Chinese documents
#'   with the LaTeX package \pkg{ctex}.
#' @export
#' @rdname article
ctex <- function(..., latex_engine = 'xelatex') {
  pdf_document_format('ctex', latex_engine = latex_engine, ...)
}

#' @section \code{elsevier_article}: Format for creating submissions to Elsevier
#'   journals. Adapted from
#'   \url{https://www.elsevier.com/authors/author-schemas/latex-instructions}.
#' @export
#' @rdname article
elsevier_article <- function(
  ..., keep_tex = TRUE, md_extensions = c("-autolink_bare_uris")
) {
  pdf_document_format(
    "elsevier_article", keep_tex = keep_tex, md_extensions = md_extensions, ...
  )
}

#' @section \code{frontiers_article}: Format for creating Frontiers journal
#'   articles. Adapted from
#'   \url{http://home.frontiersin.org/about/author-guidelines}.
#' @export
#' @rdname article
frontiers_article <- function(..., keep_tex = TRUE) {
  pdf_document_format("frontiers_article", keep_tex = keep_tex, ...)
}

#' @section \code{mdpi_article}: Format for creating submissions to
#'   Multidisciplinary Digital Publishing Institute (MDPI) journals. Adapted
#'   from \url{http://www.mdpi.com/authors/latex}.
#' @export
#' @rdname article
mdpi_article <- function(..., keep_tex = TRUE) {
  pdf_document_format(
    "mdpi_article", keep_tex = keep_tex, citation_package = "natbib", ...
  )
}

#' @section \code{mnras_article}: Format for creating an Monthly Notices of
#'   Royal Astronomical Society (MNRAS) Journal articles. Adapted from
#'   \url{https://www.ras.org.uk/news-and-press/2641-new-version-of-the-mnras-latex-package}.
#' @export
#' @rdname article
mnras_article <- function(..., keep_tex = TRUE, fig_caption = TRUE) {
  pdf_document_format(
    "mnras_article", keep_tex = keep_tex, fig_caption = fig_caption, ...
  )
}

#' @section \code{oup_article}: Format for creating submissions to many Oxford University Press
#'   journals. Adapted from
#'   \url{https://academic.oup.com/journals/pages/authors/preparing_your_manuscript}
#'   and \url{https://academic.oup.com/icesjms/pages/General_Instructions}.
#' @export
#' @rdname article
oup_article <- function(
  ..., keep_tex = TRUE,
  md_extensions = c("-autolink_bare_uris")
) {
  pdf_document_format(
    "oup_article",
    keep_tex = keep_tex, md_extensions = md_extensions, ...
  )
}

#' @section \code{peerj_article}: Format for creating submissions to The PeerJ
#'   Journal. This was adapted from the
#'   \href{https://www.overleaf.com/latex/templates/latex-template-for-peerj-journal-and-pre-print-submissions/ptdwfrqxqzbn}{PeerJ
#'    Overleaf Template}.
#' @export
#' @rdname article
peerj_article <- function(..., keep_tex = TRUE) {
  pdf_document_format("peerj_article",  keep_tex = keep_tex, ...)
}

#' @section \code{plos_article}: Format for creating submissions to PLOS
#'   journals. Adapted from \url{http://journals.plos.org/ploscompbiol/s/latex}.
#' @export
#' @rdname article
plos_article <- function(
  ..., keep_tex = TRUE, md_extensions = c("-autolink_bare_uris")
) {
  pdf_document_format(
    "plos_article", keep_tex = keep_tex, md_extensions = md_extensions, ...
  )
}

#' @section \code{pnas_article}: Format for creating submissions to PNAS
#'   journals.
#' @export
#' @rdname article
pnas_article <- function(..., keep_tex = TRUE) {
  pdf_document_format("pnas_article", keep_tex = keep_tex, ...)
}

#' @section \code{sage_article}: Format for creating submissions to Sage
#'   Journals. Based on the official Sage Journals
#'   \href{https://uk.sagepub.com/sites/default/files/sage_latex_template_4.zip}{class}.
#'
#' Possible arguments for the YAML header are:
#' \itemize{
#'   \item \code{title} title of the manuscript
#'   \item \code{runninghead} short author list for header
#'   \item \code{author} list of authors, containing \code{name} and \code{num}
#'   \item \code{address} list containing \code{num} and \code{org} for defining \code{author} affiliations
#'   \item \code{corrauth} corresponding author name and address
#'   \item \code{email} correspondence email
#'   \item \code{abstract} abstract, limited to 200 words
#'   \item \code{keywords} keywords for the article
#'   \item \code{bibliography} BibTeX \code{.bib} file name
#'   \item \code{classoption} options of the \code{sagej} class
#'  \item \code{header-includes}: custom additions to the header, before the \code{\\begin\{document\}} statement
#'  \item \code{include-after}: for including additional LaTeX code before the \code{\\end\{document\}} statement}
#' @export
#' @rdname article
sage_article <- function(..., highlight = NULL, citation_package = "natbib") {
  pdf_document_format(
    "sage_article", highlight = highlight, citation_package = citation_package, ...
  )
}

#' @section \code{sim_article}: Format for creating submissions to Statistics in
#'   Medicine. Based on the official Statistics in Medicine
#'   \href{http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1097-0258/homepage/la_tex_class_file.htm}{class}.
#'
#' Possible arguments for the YAML header are:
#' \itemize{
#'   \item \code{title} title of the manuscript
#'   \item \code{author} list of authors, containing \code{name} and \code{num}
#'   \item \code{address} list containing \code{num} and \code{org} for defining \code{author} affiliations
#'   \item \code{presentaddress} not sure what they mean with this
#'   \item \code{corres} author and address for correspondence
#'   \item \code{authormark} short author list for header
#'   \item \code{received}, \code{revised}, \code{accepted} dates of submission, revision, and acceptance of the manuscript
#'   \item \code{abstract} abstract, limited to 250 words
#'   \item \code{keywords} up to 6 keywords
#'   \item \code{bibliography} BibTeX \code{.bib} file
#'   \item \code{classoption} options of the \code{WileyNJD-v2} class
#'   \item \code{longtable} set to \code{true} to include the \code{longtable} package, used by default from \code{pandoc} to convert markdown to LaTeX code
#'  \item \code{header-includes}: custom additions to the header, before the \code{\\begin\{document\}} statement
#'  \item \code{include-after}: for including additional LaTeX code before the \code{\\end\{document\}} statement}
#' @export
#' @rdname article
sim_article <- function(..., highlight = NULL, citation_package = "natbib") {
  pdf_document_format(
    "sim_article", highlight = highlight, citation_package = citation_package, ...
  )
}

#' @section \code{springer_article}: This format was adapted from the Springer
#'   Macro package for Springer Journals.
#' @export
#' @rdname article
springer_article <- function(..., keep_tex = TRUE, citation_package = 'none'){
  pdf_document_format(
    "springer_article", keep_tex = keep_tex, citation_package = citation_package, ...
  )
}

#' @section \code{tf_article}: Format for creating submissions to a Taylor & Francis journal. Adapted from
#' \url{https://www.tandf.co.uk/journals/authors/InteractCADLaTeX.zip}.
#' @export
#' @rdname article
tf_article <- function(..., keep_tex = TRUE, citation_package = 'natbib') {
  pdf_document_format(
    "tf_article", keep_tex = keep_tex, citation_package = citation_package, ...
  )
}
