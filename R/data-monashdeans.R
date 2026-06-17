#' Monash Business School Journal Quality List
#'
#' This is a dataset that contains the list of the Deans Journal Quality list
#'   used by the Monash Business School.
#'   See <https://www.intranet.monash/business/research-services/deans-list> for the latest information.
#'
#' @return A data frame with `r NROW(monashdeans)` observations on the following 2 variables:
#' \describe{
#'   \item{`title`: }{Title of the journal}
#'   \item{`rank`: }{Since there are no rankings on the Deans list, this simply returns "Deans List"}
#'  }
#' @name monashdeans
#' @docType data
#' @usage data(monashdeans)
#' @source Monash Business School
#' @keywords datasets
#' @examples
#' library(dplyr)
#' library(stringr)
#' monashdeans |>
#'   filter(str_detect(title, "Statist")) |>
#'   arrange(rank)
"monashdeans"
