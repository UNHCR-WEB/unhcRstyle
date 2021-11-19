#' Function for UNHCR paged report template
#'
#' @param ... Arguments passed to `unhcrdown::paged_report`
#'
#' @return A pagedown report
#' @export
unhcr_templ_paged  <- function(...) {
  .Deprecated("paged_report")
  paged_report(...)
}


#' Convert to UNHCR branded Powerpoint presentation
#'
#' Format for converting from R Markdown to an UNHCR branded Powerpoint presentation
#'
#' @param ... parameters to pass to `unhcrdown::ppt_presentation`
#' @export
unhcr_templ_ppt <- function(...) {
  .Deprecated("ppt_presentation")
  ppt_presentation(...)
}

#' Convert to UNHCR branded Xaringan presentation
#'
#' Format for converting from R Markdown to an UNHCR branded Xaringan presentation
#'
#' @param ... parameters to pass to `unhcrdown::xaringan_presentation`
#' @export
unhcr_templ_slide <- function(...) {
  .Deprecated("xaringan_presentation")
  xaringan_presentation(...)
}

#' UNHCR [ggplot2] theme following brand recommendations
#'
#' \code{theme_unhcr} provides a basic \bold{UNHCR} theme
#' to use in \bold{ggplot2} commands.
#'
#' @param ... parameters to `unhcrthemes::theme_unhcr`
#'
#' @export
unhcr_theme <- function(...) {
  .Deprecated("theme_unhcr")
  theme_unhcr(...)
}