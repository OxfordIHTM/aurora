#'
#' List records
#'
#' @param base_url The OAI-PMH endpoint base URL. Set to
#'   https://ora.ox.ac.uk/oai2
#' @param metadata_prefix Prefix or code for metadata format to retrieve for
#'   each record returned. List of all the metadata formats supported can be
#'   retrieved through a call to `ora_list_metadata_formats()`. Default is
#'   **"oai_dc"** for the OAI-PMH standard Dublin Core (DC).
#'
#' @section Metadata Format: Metadata for each item (record) is available in
#'   several formats. Not all formats are supported for all records.
#'
#' @returns XML OAI response
#'
#' @examples
#' ora_list_records()
#'
#' @export
#'

ora_list_records <- function(base_url = "https://ora.ox.ac.uk/oai2",
                             metadata_prefix = c("oai_dc",
                                                 "datacite_dc",
                                                 "dart_dc",
                                                 "solo_dc",
                                                 "base_dc",
                                                 "oai_openaire",
                                                 "uketd_dc",
                                                 "rioxx_terms",
                                                 "rioxx_terms_cc0")) {
  ## Determine prefix ----
  metadata_prefix <- match.arg(metadata_prefix)

  ## Make base request ----
  req <- httr2::request(base_url)

  ## Add query ----
  req <- req |>
    httr2::req_url_query(
      verb = "ListRecords",
      metadataPrefix = metadata_prefix
    )

  ## Perform request ----
  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_xml()

  ## Return resp ----
  resp
}
