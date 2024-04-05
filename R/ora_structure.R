#'
#' Structure ORA XML outputs
#'
#' @param ora_xml XML outputs.
#'
#' @return A tibble outputs.
#'
#' @examples
#' ora_identify()
#' ora_list_meta_formats()
#'
#' @rdname ora_structure
#' @export
#'

ora_structure_identify <- function(ora_xml) {
  xml_list <- xml2::as_list(ora_xml)

  responseDate <- xml_list |>
    unlist(recursive = FALSE) |>
    (\(x) x[[1]][[1]])()

  request <- xml_list[[1]][2] |>
    (\(x) paste0(x$request, "?verb=", attributes(x$request)))()

  description <- xml_list |>
    unlist(recursive = FALSE) |>
    (\(x) x[[3]][8])() |>
    unlist() |>
    dplyr::bind_rows()

  names(description) <- names(description) |>
    tools::file_ext()

  tibble::tibble(
    responseDate,
    request,
    xml_list |>
      unlist(recursive = FALSE) |>
    (\(x) x[[3]][1:7] |> unlist() |> dplyr::bind_rows())(),
    description
  )
}

#'
#' @rdname ora_structure
#' @export
#'

ora_structure_meta_formats <- function(ora_xml) {
  xml_list <- ora_xml |>
    xml2::as_list() |>
    unlist(recursive = FALSE)

  xml_list[1:2] <- xml_list[1:2] |>
    unlist(recursive = FALSE)

  xml_list[2] <- paste0(
    xml_list[2],
    "?verb=",
    ora_xml |>
      xml2::as_list() |>
      (\(x) attributes(x[[1]][2][[1]]))()
  )

  names(xml_list) <- names(xml_list) |>
    tools::file_ext()

  xml_list[[3]] <- xml_list[[3]] |>
    dplyr::bind_rows() |>
    tidyr::unnest(
      cols = c(
        .data$metadataPrefix, .data$schema, .data$metadataNamespace
      )
    )

  dplyr::bind_cols(xml_list)
}
