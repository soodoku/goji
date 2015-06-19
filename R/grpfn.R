#' Group Sum Mean Var
#'
#' Calculate sum, mean, var by group with same n as original dataset
#' Takes a variable, a group variable, function
#' @param var variable
#' @param group grouping var
#' @param fun can be "var", "mean", "sum"
#' @return vector
#' @export
#' @examples
#' x <- c(1:10); grp <- c(rep(1:5, each=2));grpfun(x, grp, "mean")

grpfun <- function(var, group, fun){
	t.var <- var[!is.na(group)]
	t.grp <- group[!is.na(group)]
	ans <- rep(NA, length(group))
	if(fun=="var") {ans[!is.na(group)] <- unsplit(lapply(split(t.var, t.grp), function(a) var (c(a), na.rm=TRUE)), t.grp)}
	if(fun=="mean"){ans[!is.na(group)] <- unsplit(lapply(split(t.var, t.grp), function(a) mean (c(a), na.rm=TRUE)), t.grp)}
	if(fun=="sum") {ans[!is.na(group)] <- unsplit(lapply(split(t.var, t.grp), function(a) sum (c(a), na.rm=TRUE)), t.grp)}
	ans
}
	