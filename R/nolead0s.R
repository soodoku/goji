#' No Lead 0s
#'
#' Takes a vector of numerics and strips 0s before the decimal. For axis labeling etc.
#' @param x vector
#' @return vector of strings
#' @export
#' @examples
#' x <- c(0.00,0.1); nolead0s(x)

nolead0s <- function(x) {
  gsub("0\\.","\\.", x)
}
