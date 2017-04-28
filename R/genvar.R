#' Generalized Variance
#'
#' Calculates generalized variance
#' @param x data frame
#' @return numeric
#' @export
#' @examples
#' x <- data.frame(cbind(seq(7,100,10), seq(11,20,1), seq(5,35,7))); genvar(x)

genvar <- function (x) {
  n <- length(x)
  determinant <- sqrt(det(cov(x, use = "pairwise.complete.obs", method =c("pearson")))^2)
  ans <- sqrt((determinant)^(1/n))
  ans
}