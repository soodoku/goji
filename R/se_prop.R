#' SE for the proportion
#'
#' Takes p and n
#' 
#' @param p proportion
#' @param n size of the vector
#' 
#' @return vector
#' 
#' @export
#' @examples
#' se_prop(.50, 100)
#' 

se_prop <- function(p, n) {
  sqrt(p*(1 - p)/n)
}
