% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmean.R
\name{rmean}
\alias{rmean}
\title{Rounded Mean}
\usage{
rmean(x, wt = NULL, n = 2)
}
\arguments{
\item{x}{vector of numbers}

\item{wt}{weight vector}

\item{n}{number of rounding places}
}
\value{
numeric
}
\description{
Mean or Weighted Mean rounded to 2 decimal places by default
Takes a vector
}
\examples{
x <- c(.200, .123, 2.2); rmean(x)
}
