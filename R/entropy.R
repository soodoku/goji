#' Calculate Entropy
#'
#' Takes a vector and number 
#' @param x vector
#' @param n
#' @return recoded vector
#' @export
#' @examples
#' x <- c(1,2,3); entropy(x,2)

entropy <- function(x, n){
	entropy <- NA
	ent1 <- ent2 <- ent3 <- ent4 <- 0
	if(sum(x, na.rm=T)==0 | length(table(round(x,2)))==0){entropy <- NA}
	if(length(table(round(x,2))) > 0){
		p <- table(round(x,2))/length(x)
		if(n ==2) {
			p1 = p[1]
			p2 = 1 - p1
			if(p1==0){ent1 <- 0} else {ent1 <- p1*log2(p1)} 
			if(p2==0){ent2 <- 0} else {ent2 <- p2*log2(p2)}
			entropy = - (ent1 + ent2)
		}
		if(n ==4) {
			if(p[1]==0){ent1 <- 0} else {ent1 <- p[1]*log2(p[1])} 
			if(!is.na(p[2]) & p[2]==0){ent2 <- 0} else {ent2 <- p[2]*log2(p[2])}
			if(!is.na(p[3]) & p[3]==0){ent3 <- 0} else {ent3 <- p[3]*log2(p[3])} 
			if(!is.na(p[4]) & p[4]==0){ent4 <- 0} else {ent4 <- p[4]*log2(p[4])}
			entropy = - (ent1 + ent2 + ent3 + ent4)
		 }
		}
		entropy
}