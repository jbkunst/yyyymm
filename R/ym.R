#' Verify that an object is a date-object
#' @keywords internal
is_yyyymm <- function(ym) {
  ymn <- as.numeric(ym)
  month <- as.numeric(str_sub(as.character(ym), -2, -1))
  stopifnot(ym > 100001, ym <= 999912)
  stopifnot(ym == as.integer(ym))
  stopifnot(month >= 1, month <= 12)
  TRUE
}



#' Year month string to date
#' @param ym ym
#' @param day day
#' @examples
#' dts <- ym_to_date(c(200902, 201912))
#' dts
#' class(dts)
#' @export
ym_to_date <- function(ym = c(200902, 201912), day = 1) {
  is_yyyymm(ym)
  ymd(paste0(ym, str_pad(day, 2, pad = "0")))
}



#' Year month string to date
#' @param ym ym
#' @param ym2 ym2
#' @examples
#' ym_diff(c(200902, 201912), c(200901, 201712))
#' @references http://stackoverflow.com/questions/1995933/number-of-months-between-two-dates/26640698#26640698
#' @export
ym_diff <- function(ym = c(200902, 201912), ym2 = c(200901, 201712)) {
  is_yyyymm(ym)
  is_yyyymm(ym2)
  ed <- ym_to_date(ym)
  sd <- ym_to_date(ym2)
  12 * (lubridate::year(ed) - lubridate::year(sd)) + (lubridate::month(ed) - lubridate::month(sd))
}



#' Year month to semester, quarter, trimester
#' @param ym ym
#' @param ng number of groups
#' @export
ym_div <- function(ym = format(ymd(20170101) + months(0:11), "%Y%m"), ng = 4) {
  is_yyyymm(ym)
  stopifnot(ng %in% c(2, 3, 4, 6))
  months_per_group <- 12 / ng

  cuts <- (seq(1, 12 / months_per_group) - 1) * months_per_group + 1

  ymd <- ym_to_date(ym)

  ms <- month(ymd)

  new_ms <- cut(ms,
    breaks = unique(c(cuts, 12)),
    labels = unique(cuts), include.lowest = TRUE, right = FALSE
  )
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
#' ym_format(c(200902, 201912), "%B del %Y")
#' @export
ym_format <- function(ym = c(200902, 201912), format = "%Y%m%d", day = 1) {
  is_yyyymm(ym)
  format(ymd(paste0(ym, str_pad(day, 2, pad = "0"))), format)
}



#' Add months to a year month
#' @param ym ym
#' @param months months
#' @examples
#' ym_add_months(c(200902, 201912), months = c(1, -12))
#' @export
ym_add_months <- function(ym = c(201201, 201303), months = c(1, -12)) {
  is_yyyymm(ym)
  dates <- ym_to_date(ym)
  as.numeric(format(dates + months(months), "%Y%m"))
}



#' Sequence of months
#' @param from ym
#' @param to ym
#' @param by Same argument in `seq.Date`, can be "month" or "year".
#' @examples
#' ym_seq(201303, 201512)
#' @export
ym_seq <- function(from = 200903, to = 201512, by = "month") {
  as.numeric(format(seq.Date(ym_to_date(from), ym_to_date(to), by = by), "%Y%m"))
}
