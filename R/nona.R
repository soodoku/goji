#' No NAs
#'
#' Converts NAs to 0s
#' 
#' @param x vector
#' @return vector
#' 
#' @export
#' @examples
#' x <- c(NA, 1, 2); nona(x)

nona <- function(x) {

  x[is.na(x)] <- 0
  x
}
