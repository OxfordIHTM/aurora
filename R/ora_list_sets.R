#'
#' List sets of work
#'
#' @param base_url The OAI-PMH endpoint base URL. Set to
#'   https://ora.ox.ac.uk/oai2
#'
#' @returns XML OAI response
#'
#' @section List Sets: ORA records are available for selective harvesting as a
#'   separate set based on their **Type of work** within the ORA system, e.g.
#'   *"thesis"*, *"dataset"*, *"journal article"*.
#'
#' @examples
#' ora_list_sets()
#'
#' @export
#'

ora_list_sets <- function(base_url = "https://ora.ox.ac.uk/oai2") {
  ## Make base request ----
  req <- httr2::request(base_url)

  ## Add query ----
  req <- req |>
    httr2::req_url_query(verb = "ListSets")

  ## Perform request ----
  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_xml()

  ## Return resp ----
  resp
}
