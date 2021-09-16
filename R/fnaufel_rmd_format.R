#' Custom HTML template
#'
#' Loads additional style and configs
#'
#' @param toc see [rmarkdown::html_document]
#' @param toc_depth see [rmarkdown::html_document]
#' @param toc_float see [rmarkdown::html_document]
#' @param number_sections see [rmarkdown::html_document]
#' @param anchor_sections see [rmarkdown::html_document]
#' @param section_divs see [rmarkdown::html_document]
#' @param fig_width see [rmarkdown::html_document]
#' @param fig_height see [rmarkdown::html_document]
#' @param fig_retina see [rmarkdown::html_document]
#' @param fig_caption see [rmarkdown::html_document]
#' @param dev see [rmarkdown::html_document]
#' @param df_print see [rmarkdown::html_document]
#' @param code_folding see [rmarkdown::html_document]
#' @param code_download see [rmarkdown::html_document]
#' @param self_contained see [rmarkdown::html_document]
#' @param theme see [rmarkdown::html_document]
#' @param highlight see [rmarkdown::html_document]
#' @param mathjax see [rmarkdown::html_document]
#' @param template see [rmarkdown::html_document]
#' @param extra_dependencies see [rmarkdown::html_document]
#' @param css see [rmarkdown::html_document]
#' @param includes see [rmarkdown::html_document]
#' @param keep_md see [rmarkdown::html_document]
#' @param lib_dir see [rmarkdown::html_document]
#' @param md_extensions see [rmarkdown::html_document]
#' @param pandoc_args see [rmarkdown::html_document]
#' @param ... see [rmarkdown::html_document]
#'
#' @export
#'
fnaufel_rmd_format = function(
  toc = TRUE,
  toc_depth = 2,
  toc_float = FALSE,
  number_sections = TRUE,
  anchor_sections = TRUE,
  section_divs = TRUE,
  fig_width = 7,
  fig_height = 5,
  fig_retina = 2,
  fig_caption = TRUE,
  dev = 'png',
  df_print = 'paged',
  code_folding = 'show',
  code_download = TRUE,
  self_contained = TRUE,
  theme = 'readable', # https://bootswatch.com/3/readable/
  highlight = 'pygment',
  mathjax = 'default',
  template = 'default',
  extra_dependencies = NULL,
  css = system.file("rmarkdown/resources/styles.css", package = "rmdformat"),
  includes = rmarkdown::includes(
    in_header = system.file(
      "rmarkdown/resources/header.html",
      package = "rmdformat"
    )
  ),
  keep_md = FALSE,
  lib_dir = NULL,
  md_extensions = NULL,
  pandoc_args = NULL,
  ...
) {

  # call the base html_document function
  rmarkdown::html_document(
    toc = toc,
    toc_depth = toc_depth,
    toc_float = toc_float,
    number_sections = number_sections,
    anchor_sections = anchor_sections,
    section_divs = section_divs,
    fig_width = fig_width,
    fig_height = fig_height,
    fig_retina = fig_retina,
    fig_caption = fig_caption,
    dev = dev,
    df_print = df_print,
    code_folding = code_folding,
    code_download = code_download,
    self_contained = self_contained,
    theme = theme,
    highlight = highlight,
    mathjax = mathjax,
    template = template,
    extra_dependencies = extra_dependencies,
    css = css,
    includes = includes,
    keep_md = keep_md,
    lib_dir = lib_dir,
    md_extensions = md_extensions,
    pandoc_args = pandoc_args,
    ...
  )

}
