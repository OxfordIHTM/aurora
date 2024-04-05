#'
#' Structure ORA XML outputs
#'
#' @param ora_xml XML outputs
#'
#' @return A structured output
#'
#' @examples
#' #ora_identify() |> ora_identify_structure()
#'
#' @rdname ora_structure
#' @export
#'

ora_identify_structure <- function(ora_xml) {
  field_names <- ora_xml |>
    xml2::xml_children() |>
    xml2::xml_children() |>
    xml2::xml_name()

  values <- ora_xml |>
    xml2::xml_children() |>
    xml2::xml_attrs(".//verb")
    xml2::xml_children() |>
    xml2::xml_contents() |>
    xml2::xml_children() |>
    xml2::xml_contents()
}
