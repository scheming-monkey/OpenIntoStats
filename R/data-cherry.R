#' Summary information for 31 cherry trees
#'
#' Researchers wanting to understand the relationship between these variables
#' for black cherry trees collected data from 31 trees in the Allegheny
#' National Forest, Pennsylvania.
#'
#'
#' @name cherry
#' @docType data
#' @format A data frame with 31 observations on the following 3 variables.
#' \describe{
#'   \item{diam}{diameter in inches (at 54 inches above ground)}
#'   \item{height}{height is measured in feet}
#'   \item{volume}{volume in cubic feet}
#'   }
#' @source D.J. Hand. A handbook of small data sets. Chapman & Hall/CRC, 1994.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(broom)
#'
#' ggplot(cherry, aes(x = diam, y = volume)) +
#'   geom_point() +
#'   geom_smooth(method = "lm")
#'
#' mod <- lm(volume ~ diam + height, cherry)
#' tidy(mod)
"cherry"
