% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/entropy.R
\name{entropy}
\alias{entropy}
\title{Calculate Entropy}
\usage{
entropy(x, n)
}
\arguments{
\item{x}{vector}

\item{n}{can be 2 or 4}
}
\value{
recoded vector
}
\description{
Max. for now 4 categories
}
\details{
Takes a vector and number of categories
}
\examples{
x <- c(1,2,3); entropy(x,2)
}
