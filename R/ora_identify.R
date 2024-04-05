#'
#' Identify
#'
#' @param base_url The OAI-PMH endpoint base URL. Set to
#'   https://ora.ox.ac.uk/oai2
#'
#' @returns XML OAI response
#'
#' @examples
#' ora_identify()
#'
#' @export
#'

ora_identify <- function(base_url = "https://ora.ox.ac.uk/oai2") {
  ## Make base request ----
  req <- httr2::request(base_url)

  ## Add query ----
  req <- req |>
    httr2::req_url_query(verb = "Identify")

  ## Perform request ----
  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_xml()

  ## Return resp ----
  resp
}
