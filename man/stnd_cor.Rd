% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stnd_cor.R
\name{stnd_cor}
\alias{stnd_cor}
\title{Standard Correction for Guessing For Multiple Choice Items With DKs}
\usage{
stnd_cor(item = NULL, n_options = 4)
}
\arguments{
\item{item}{vector; Response to the knowledge item. We assume that the domain of values
that the vector can take is: 0 (incorrect answer), 1 (correct answer), 'dk' (Don't Know),
and NAs. We assume missing values are MCAR. Missing values in knowledge items are best
treated as confessions of ignorance. And if you agree with the point, pass the 
values through \code{nona} to convert NAs to 0.}

\item{n_options}{numeric; Total number of options. Default is 4.}
}
\description{
Standard Correction for Guessing For Multiple Choice Items With DKs
}
\examples{
x <- c(NA, 1, 0, 1, 0, 0); mean(x, na.rm = TRUE); stnd_cor(x, 4)
}
