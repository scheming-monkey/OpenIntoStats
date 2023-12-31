% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-nba_heights.R
\docType{data}
\name{nba_heights}
\alias{nba_heights}
\title{NBA Player heights from 2008-9}
\format{
A data frame with 435 observations (players) on the following 4
variables.
\describe{
\item{last_name}{Last name.}
\item{first_name}{First name.}
\item{h_meters}{Height, in meters.}
\item{h_in}{Height, in inches.}
}
}
\source{
Collected from \href{https://www.nba.com/}{NBA}.
}
\usage{
nba_heights
}
\description{
Heights of all NBA players from the 2008-9 season.
}
\examples{

qqnorm(nba_heights$h_meters)
}
\keyword{datasets}
