% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-poker.R
\docType{data}
\name{poker}
\alias{poker}
\title{Poker winnings during 50 sessions}
\format{
A data frame with 49 observations on the following variable.
\describe{
\item{winnings}{Poker winnings and losses, in US dollars.}
}
}
\source{
Anonymity has been requested by the player.
}
\usage{
poker
}
\description{
Poker winnings (and losses) for 50 days by a professional poker player.
}
\examples{

library(ggplot2)

ggplot(poker, aes(x = winnings)) +
  geom_histogram(binwidth = 250)
}
\keyword{datasets}
