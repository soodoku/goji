#' Recode 0 to 1
#'
#' Takes a vector of values, min and max values if not observed, and recodes to 0 to 1 range
#' @param x vector
#' @param minx  min value of x
#' @param maxx  max value of x
#' @return recoded vector
#' @export
#' @examples
#' x <- c(1,2,3); zero1(x)

zero1 <- function(x, minx=NA, maxx=NA){
	stopifnot(identical(typeof(as.numeric(x)), 'double'))
	if(typeof(x)=='character') x <- as.numeric(x)
	res <- NA
	if(is.na(minx)) res <- (x - min(x,na.rm=T))/(max(x,na.rm=T) -min(x,na.rm=T))
	if(!is.na(minx)) res <- (x - minx)/(maxx -minx)
	res
}