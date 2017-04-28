#' Star Generator
#'
#' Takes p-value or vector of p-values and generates stars
#' @param pvalue vector of p-values
#' @return numeric
#' @export
#' @examples
#' x <- c(.002, .01, .2); stars(x)

stars <- function(pvalue) {

	if(length(pvalue) > 1) {

		temp <- c(); 
		for(i in 1:length(pvalue)){
			temp[i] <- stars(pvalue[i])
		} 
		return(temp)
	}
	
	temp <- NA
	
	pvalue <- as.numeric(pvalue)
	
	if(pvalue > .1) temp <- ""
	if(pvalue < .1) temp <- "+"
	if(pvalue <= .05) temp <- "*"
	if(pvalue < .01) temp <- "**"
	if(pvalue < .001) temp <- "***"
	temp
}
