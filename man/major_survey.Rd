% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-major_survey.R
\docType{data}
\name{major_survey}
\alias{major_survey}
\alias{major.survey}
\title{Survey of Duke students and the area of their major}
\format{
A data frame with 218 observations on the following 2 variables.
\describe{ \item{gpa}{Grade point average (GPA).} \item{major}{Area of
academic major.} }
}
\usage{
major_survey
}
\description{
Survey of 218 students, collecting information on their GPAs and their
academic major.
}
\examples{

library(ggplot2)

ggplot(major_survey, aes(x = major, y = gpa)) +
  geom_boxplot()
}
\keyword{datasets}
