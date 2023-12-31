% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-prius_mpg.R
\docType{data}
\name{prius_mpg}
\alias{prius_mpg}
\title{User reported fuel efficiency for 2017 Toyota Prius Prime}
\format{
A data frame with 19 observations on the following 10 variables.
\describe{
\item{average_mpg}{Average mileage as estimated by the user.}
\item{state}{US State the user lives in.}
\item{stop_and_go}{Proportion of stop and go driving.}
\item{highway}{Proportion of highway driving.}
\item{last_updated}{Date estimate was last updated.}
}
}
\source{
Fueleconomy.gov,
\url{https://www.fueleconomy.gov/mpg/MPG.do?action=mpgData&vehicleID=38531&browser=true&details=on},
retrieved 2019-04-14.
}
\usage{
prius_mpg
}
\description{
Fueleconomy.gov, the official US government source for fuel economy
information, allows users to share gas mileage information on their
vehicles. These data come from 19 users sharing gas mileage on their
2017 Toyota Prius Prime. Note that these data are user estimates and
since the sources data cannot be verified, the accuracy of these estimates
are not guaranteed.
}
\examples{

library(ggplot2)
library(dplyr)

ggplot(prius_mpg, aes(x = average_mpg)) +
  geom_histogram(binwidth = 25)
}
\keyword{datasets}
