#' Auxiliar shortcut scales with opinionated pre-sets
#'
#' @param date_labels Date labels
#' @param ... More arguments for `scale_x_date`
#' @importFrom ggplot2 scale_x_date
#' @export
scale_x_date_year <- function(date_labels = "%Y", ...) {
  ggplot2::scale_x_date(
    date_labels = date_labels,
    ...
    )
}

#' @rdname scale_x_date_year
#' @export
scale_x_date_yyyymm <- function(date_labels = "%Y%m", ...) {
  ggplot2::scale_x_date(
    date_labels = date_labels,
    ...
    )
}
