% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean.R
\name{clean}
\alias{clean}
\title{Clean}
\usage{
clean(x)
}
\arguments{
\item{x}{string or a vector of strings that needs to be cleaned}
}
\value{
string or vector
}
\description{
Coverts to lower case, removes punctuation and spaces
Takes a string or a vector of strings
}
\examples{
x <- c("John, doe ", "first last  "); clean(x)
}
