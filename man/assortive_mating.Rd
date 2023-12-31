% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-assortative_mating.R
\docType{data}
\name{assortive_mating}
\alias{assortive_mating}
\alias{assortative_mating}
\alias{assortive.mating}
\title{Eye color of couples}
\format{
A data frame with 204 observations on the following 2 variables.
\describe{
\item{self_male}{a factor with levels \code{blue}, \code{brown}, and \code{green}}
\item{partner_female}{a factor with \code{blue}, \code{brown}, and \code{green}}
}
}
\source{
B. Laeng et al. Why do blue-eyed men prefer women with the same eye
color? In: Behavioral Ecology and Sociobiology 61.3 (2007), pp. 371-384.
}
\usage{
assortative_mating
}
\description{
Colors of the eye colors of male and female partners.
}
\examples{

data(assortive_mating)
table(assortive_mating)
}
\keyword{datasets}
