#' Standardize
#'
#' Standardize a variable
#' Takes a vector
#' @param x vector of numbers
#' @return vector
#' @export
#' @examples
#' x <- c(1,2,3); standardize(x)

standardize  <-  function(x) {

  if (is.vector(x))  {
    x  <-  (x  -  mean(x)) / sqrt(var(x))
    return(x)
  } else {
    stop("Not a vector")
  }
}
