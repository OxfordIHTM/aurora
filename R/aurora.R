#'
#' Interface to the Oxford University Research Archive (ORA) API
#'
#' The [Oxford University Research Archive (ORA)](https://ora.ox.ac.uk/) is an
#' Open Access platform and is the institutional repository for the
#' University of Oxford. ORA serves as a permanent and secure online archive of
#' research materials produced by members of the University of Oxford. ORA
#' supports and participates in the Open Archives Initiative (OAI). ORA is a
#' registered OAI-PMH data-provider and provides metadata for all public records
#' which is updated as soon as each record is published or updated. ORA also
#' provides API access to its resources. This package provides low level
#' functions to interface with the [ORA API](https://ora.ox.ac.uk/api).
#'
#' @docType package
#' @name aurora
#' @keywords internal
#' @importFrom httr2 request req_url_query req_perform resp_body_xml
#' @importFrom xml2 as_list
#' @importFrom dplyr bind_rows bind_cols
#' @importFrom tidyr unnest
#' @importFrom rlang .data
#' @importFrom tibble tibble
#'
"_PACKAGE"
