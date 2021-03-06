% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/testData.R
\name{testMatX}
\alias{testMatX}
\alias{testResponse}
\alias{testResponse0}
\alias{testRook}
\title{Construction of test data}
\usage{
testMatX(...)

testResponse0(x, beta = rep(1, ncol(x)))

testResponse(y0, k = 1:4, .sd = sd(y0))

testRook(n)
}
\arguments{
\item{...}{matrices}

\item{x}{a matrix}

\item{beta}{a vector with parameters}

\item{y0}{a response vector (numeric)}

\item{k}{values in 1 to 4 (integer)}

\item{.sd}{the standard deviation used for random numbers}

\item{n}{dimension}
}
\description{
Construction of test data
}
\examples{
## Examples from Weihs et. al. (2014) p. 108
library("Matrix")
testMatX(Matrix(998), Matrix(998))
Z <- Matrix(c(998, 0, 0, 0), 2, 2)
testMatX(Z, Z)
testResponse0(testMatX(Matrix(1)))
library("magrittr")
Matrix(1) \%>\% testMatX \%>\% testResponse0 \%>\% testResponse
}
\references{
Weihs / Mersmann / Ligges (2014): Foundations of Statistical
  Algorithms: With References to R Packages
}

