#' Custom HTML template
#'
#' Loads additional style and template file
#'
#' @param toc should a table of contents be displayed?
#' @param ... additional arguments provided to \@code{html_document}
#' @export
#'
fnaufel_rmd_format = function(toc = TRUE, ...) {

  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "rmdformat")
  }

  css    = pkg_resource("rmarkdown/resources/styles.css")

  # call the base html_document function
  rmarkdown::html_document(
    toc = toc,
    css = css,
    ...
  )

}
