#' Survey on Ebola quarantine
#'
#' In New York City on October 23rd, 2014, a doctor who had recently been
#' treating Ebola patients in Guinea went to the hospital with a slight fever
#' and was subsequently diagnosed with Ebola. Soon thereafter, an NBC 4 New
#' York/The Wall Street Journal/Marist Poll asked New Yorkers whether they
#' favored a "mandatory 21-day quarantine for anyone who has come in contact
#' with an Ebola patient". This poll included responses of 1,042 New York
#' adults between October 26th and 28th, 2014.
#'
#'
#' @name ebola_survey
#' @docType data
#' @format A data frame with 1042 observations on the following variable.
#' \describe{
#'   \item{quarantine}{Indicates whether the respondent is in \code{favor} or
#'   \code{against} the mandatory quarantine.}
#'   }
#' @source Poll ID NY141026 on maristpoll.marist.edu.
#' @keywords datasets
#' @examples
#'
#' table(ebola_survey)
"ebola_survey"
