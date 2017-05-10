#' Rounded Mean
#'
#' Mean or Weighted Mean rounded to 2 decimal places by default
#' Takes a vector
#' @param x vector of numbers
#' @param n number of rounding places
#' @param wt weight vector
#' @return numeric
#' @export
#' @examples
#' x <- c(.200, .123, 2.2); rmean(x)

rmean <- function(x, wt = NULL, n = 2) {

  ans <- round(mean(x, na.rm = T), n)

  if (!is.null(wt)) {

    ans <- round(weighted.mean(x, wt, na.rm = T), n)
  }

  ans
}
