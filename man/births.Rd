% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-births.R
\docType{data}
\name{births}
\alias{births}
\title{North Carolina births, 100 cases}
\format{
A data frame with 150 observations on the following 14 variables.
\describe{
\item{f_age}{Father's age.}
\item{m_age}{Mother's age.}
\item{weeks}{Weeks at which the mother gave birth.}
\item{premature}{Indicates whether the baby was premature or not.}
\item{visits}{Number of hospital visits.}
\item{gained}{Weight gained by mother.}
\item{weight}{Birth weight of the baby.}
\item{sex_baby}{Gender of the baby.}
\item{smoke}{Whether or not the mother was a smoker.}
}
}
\source{
Birth records released by North Carolina in 2004.
}
\usage{
births
}
\description{
Data on a random sample of 100 births for babies in North Carolina where the
mother was not a smoker and another 50 where the mother was a smoker.
}
\examples{

library(ggplot2)

ggplot(births, aes(x = smoke, y = weight)) +
  geom_boxplot()
}
\seealso{
We do not have ideal provenance for these data. For a better
documented and more recent dataset on a similar topic with similar variables,
see \link{births14}. Additionally, \link{ncbirths} also contains similar data.
}
\keyword{datasets}
