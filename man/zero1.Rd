% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zero1.R
\name{zero1}
\alias{zero1}
\title{Recode 0 to 1}
\usage{
zero1(x, minx = NA, maxx = NA)
}
\arguments{
\item{x}{vector}

\item{minx}{min value of x}

\item{maxx}{max value of x}
}
\value{
recoded vector
}
\description{
Takes a vector of values, min and max values if not observed, and recodes to 0 to 1 range
}
\examples{
x <- c(1,2,3); zero1(x)
}
