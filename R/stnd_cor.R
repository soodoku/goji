#' Standard Correction for Guessing For Multiple Choice Items With DKs
#' 
#' @param item vector; Response to the knowledge item. We assume that the domain of values
#' that the vector can take is: 0 (incorrect answer), 1 (correct answer), 'dk' (Don't Know),
#' and NAs. We assume missing values are MCAR. Missing values in knowledge items are best
#' treated as confessions of ignorance. And if you agree with the point, pass the 
#' values through \code{nona} to convert NAs to 0.
#' @param n_options numeric; Total number of options. Default is 4.
#' 
#' @export
#' @examples
#' x <- c(NA, 1, 0, 1, 0, 0); mean(x, na.rm = TRUE); stnd_cor(x, 4)

stnd_cor <- function(item = NULL, n_options = 4) {

  total_correct <- sum(item == 1, na.rm = TRUE)
  total_incorrect <- sum(item == 0, na.rm = TRUE)

  est_guessed_correctly <- total_incorrect / (n_options - 1)
  est_correct <- (total_correct - est_guessed_correctly) 

  adjusted <- est_correct / length(item)
  adjusted
}
