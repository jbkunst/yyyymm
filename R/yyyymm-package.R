#' yyyymm exported operators and S3 methods
#' The following functions are imported and then re-exported
#' from the gravity package to avoid listing Depends of yyyymm.
#' @importFrom stringr str_sub str_pad
#' @importFrom lubridate ymd year month is.Date
#' @name yyyymm-exports
#' @keywords internal

globalVariables(c("."))
