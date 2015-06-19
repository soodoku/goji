#' nice
#'
#' Formats numbers to the preferred format: X.XX
#' Takes a number or a vector
#' @param x number of vector of numbers
#' @return Vector of strings
#' @export
#' @examples
#' x <- c(.200, .123, 2.2); nice(x)

nice <- function(x){
	if(length(x) > 1){ 
		temp <- c(); 
		for(i in 1:length(x)){
			temp[i] <- nice(x[i])
		} 
		return(temp)
	}
	temp <-	sprintf("%1.2f", as.numeric(x))
	# format(c(0.0, 13.1), digits = 2, nsmall = 2)
	if(as.numeric(temp)==0) temp <- "0.00"
	splits <- strsplit(temp, "\\.")[[1]]
	if(splits[1]=="0")	temp <- paste(".",splits[2], sep="")
	#grep("\\.+", 4.22)
	#format()
	if(splits[1]=="-0") temp <- paste("-.", splits[2], sep="")	
	temp
}