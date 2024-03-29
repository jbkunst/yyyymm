#' @importFrom dplyr case_when
scale_date_fmt <- function(x, date_label = "%b") {
  # x <- ym_to_date(ym_seq(202008, 202203))
  xm <- format(x, date_label)
  xm

  x2 <- ifelse(lubridate::month(x) == 1, lubridate::year(x), NA)
  x2[1] <- lubridate::year(x[1])

  xout <- dplyr::case_when(
    !is.na(x2) ~ stringr::str_c(xm, "\n", x2),
    TRUE ~ xm
  )

  xout

}

#' A date format helper to show the year in January
#' @param x vector of date class
#' @param date_label the formar of date
#' @export
date_format_jy <- function(x, date_label = "%b"){
  function(x){
    scale_date_fmt(x, date_label = date_label)
  }
}
