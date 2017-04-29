#' Clean
#'
#' Coverts to lower case, removes punctuation and spaces
#' Takes a string or a vector of strings
#' @param x string or a vector of strings that needs to be cleaned
#' @return string or vector
#' @export
#' @examples
#' x <- c("John, doe ", "first last  "); clean(x)

clean <- function(x) {

  x <- tolower(x) 
    
  x <- gsub('[[:punct:]]', "", x) # remove punctuation
  x <- gsub('[[:space:]]', "", x) # remove space
  
  x
}
