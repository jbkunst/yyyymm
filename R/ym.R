#' Year month string to date
#' @param ym ym
#' @param day day
#' @importFrom lubridate ymd
#' @importFrom stringr str_pad
#' @examples
#'
#' dts <- ym_to_date(c(200902, 201912))
#' dts
#' class(dts)
#'
#' @export
ym_to_date <- function(ym = c(200902, 201912), day = 1){
  lubridate::ymd(paste0(ym, stringr::str_pad(day, 2, pad = "0")))
}

#' Year month string to date
#' http://stackoverflow.com/questions/1995933/number-of-months-between-two-dates/26640698#26640698
#' @param ym ym
#' @param ym2 ym2
#' @importFrom lubridate year month
#' @examples
#'
#' ym_diff(c(200902, 201912), c(200901, 201712))
#'
#' @export
ym_diff <- function(ym = c(200902, 201912), ym2 = c(200901, 201712)) {

  ed <- ym_to_date(ym)
  sd <- ym_to_date(ym2)

  12 * (lubridate::year(ed) - lubridate::year(sd)) + (lubridate::month(ed) - lubridate::month(sd))

}

#' Year month to semester, quarter, trimester
#' @param ym ym
#' @param ng number of groups.
#' @export
ym_div <- function(ym = format(ymd(20170101) + months(0:11), "%Y%m"), ng = 4) {

  stopifnot(ng %in% c(2,3,4,6))

  months_per_group <- 12/ng

  cuts <- (seq(1, 12/months_per_group) - 1) * months_per_group + 1

  ymd <- ym_to_date(ym)

  ms <- lubridate::month(ymd)

  new_ms <- cut(ms, breaks = unique(c(cuts, 12)),
                labels = unique(cuts), include.lowest = TRUE, right = FALSE)
  new_ms <- as.character(new_ms)
  new_ms <- as.numeric(new_ms)

  lubridate::month(ymd) <- new_ms

  as.numeric(format(ymd, "%Y%m"))

}

#' Format a year month into a specific date format
#' A wrapper for ym_to_date and format:
#' @param ym ym
#' @param format format
#' @param day day
#' @examples
#'
#' ym_format(c(200902, 201912), "%B del %Y")
#'
#' @export
ym_format <- function(ym = c(200902, 201912), format = "%Y%m%d", day = 1){
  as.numeric(format(lubridate::ymd(paste0(ym, stringr::str_pad(day, 2, pad = "0"))), format))
}


#' Add mothns to a year month
#'
#' @param ym ym
#' @param months months
#' @examples
#'
#' ym_add_months(c(200902, 201912), months = c(1, -12))
#'
#' @export
ym_add_months <- function(ym = c(201201, 201303), months = c(1, -12)) {

  dates <- ym_to_date(ym)
  as.numeric(format(dates + months(months)))
}


#' Sequence from
#'
#' @param from ym
#' @param to ym
#' @param by Same argument in `seq.Date`, can be "month" or "year".
#' @examples
#'
#' ym_seq(201303, 201512)
#'
#' @export
ym_seq <- function(from = 200903, to = 201512, by = "month") {

  as.numeric(format(seq.Date(ym_to_date(from), ym_to_date(to), by = by), "%Y%m"))

}
