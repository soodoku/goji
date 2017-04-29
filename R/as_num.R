#' Gently coerce to numeric: convert all chars to NA
#' 
#' 
#' @param x vector
#' @return vector
#' 
#' @export
#' @examples
#' x <- c("a", 1, 2); as_num(x)
#' 
#' # Alternate way: 
#' x <- c("a", 1, 2); class(x) <- "numeric"
#' 

as_num <- function(x) {
	
  as.numeric(ifelse(grepl("[a-z]", x), NA, x))
}
