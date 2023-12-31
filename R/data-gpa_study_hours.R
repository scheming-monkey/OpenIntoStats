#' gpa_study_hours
#'
#' A data frame with 193 rows and 2 columns. The columns represent the
#' variables \code{gpa} and \code{study_hours} for a sample of 193
#' undergraduate students who took an introductory statistics course in 2012 at
#' a private US university.
#'
#' GPA ranges from 0 to 4 points, however one student reported a GPA > 4. This
#' is a data error but this observation has been left in the dataset as it is
#' used to illustrate issues with real survey data. Both variables are self
#' reported, hence may not be accurate.
#'
#' @name gpa_study_hours
#' @docType data
#' @format A data frame with 193 observations on the following 2 variables.
#' \describe{
#'   \item{gpa}{Grade point average (GPA) of student.}
#'   \item{study_hours}{Number of hours students study per week.}
#'   }
#' @source Collected at a private US university as part of an anonymous survey
#' in an introductory statistics course.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(gpa_study_hours, aes(x = study_hours, y = gpa)) +
#'   geom_point(alpha = 0.5) +
#'   labs(x = "Study hours/week", y = "GPA")
"gpa_study_hours"
