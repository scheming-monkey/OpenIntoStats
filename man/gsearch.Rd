% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsearch.R
\docType{data}
\name{gsearch}
\alias{gsearch}
\title{Simulated Google search experiment}
\format{
A data frame with 10000 observations on the following 2 variables.
\describe{
\item{type}{a factor with levels \code{new search} \code{no new search}}
\item{outcome}{a factor with levels \code{current} \code{test 1} \code{test 2}}
}
}
\usage{
gsearch
}
\description{
The data were simulated to look like sample results from a Google search
experiment.
}
\examples{

library(ggplot2)

table(gsearch$type, gsearch$outcome)

ggplot(gsearch, aes(x = type, fill = outcome)) +
  geom_bar(position = "fill") +
  labs(y = "proportion")
}
\keyword{datasets}
