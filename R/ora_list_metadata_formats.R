#'
#' List metadata formats
#'
#' @param base_url The OAI-PMH endpoint base URL. Set to
#'   https://ora.ox.ac.uk/oai2.
#' @param tabular Logical. Should response be structured into a table?
#'   Default is TRUE.
#'
#' @returns A data.frame (default) or an XML document (if `tabular = FALSE`)
#'   with identifying information on the OAI metadata formats.
#'
#' @examples
#' ora_list_meta_formats()
#'
#' @export
#'

ora_list_meta_formats <- function(base_url = "https://ora.ox.ac.uk/oai2",
                                  tabular = TRUE) {
  ## Make base request ----
  req <- httr2::request(base_url)

  ## Add query ----
  req <- req |>
    httr2::req_url_query(verb = "ListMetadataFormats")

  ## Perform request ----
  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_xml()

  ## Structure resp ----
  if (tabular)
    resp <- ora_structure_meta_formats(resp)

  ## Return resp ----
  resp
}
