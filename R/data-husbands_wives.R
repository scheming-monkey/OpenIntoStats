#' Great Britain: husband and wife pairs
#'
#' The Great Britain Office of Population Census and Surveys once collected
#' data on a random sample of 170 married couples in Britain, recording the age
#' (in years) and heights of the husbands and wives.
#'
#'
#' @name husbands_wives
#' @aliases husbands_wives husbands.wives
#' @docType data
#' @format A data frame with 199 observations on the following 8 variables.
#' \describe{\item{age_husband}{Age of husband.} \item{age_wife}{Age of wife.}
#' \item{ht_husband}{Height of husband (mm).} \item{ht_wife}{Height of wife
#' (mm).} \item{age_husb_at_marriage}{Age of husband at the time they married.}
#' \item{age_wife_at_marriage}{Age of wife at the time they married.}
#' \item{years_married}{Number of years married.} }
#' @source Hand DJ. 1994. A handbook of small data sets. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(husbands_wives, aes(x = ht_husband, y = ht_wife)) +
#'   geom_point()
"husbands_wives"
