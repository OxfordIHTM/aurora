# List records

List records

## Usage

``` r
ora_list_records(
  base_url = "https://ora.ox.ac.uk/oai2",
  metadata_prefix = c("oai_dc", "datacite_dc", "dart_dc", "solo_dc", "base_dc",
    "oai_openaire", "uketd_dc", "rioxx_terms", "rioxx_terms_cc0")
)

ora_list_records_id(
  base_url = "https://ora.ox.ac.uk/oai2",
  metadata_prefix = c("oai_dc", "datacite_dc", "dart_dc", "solo_dc", "base_dc",
    "oai_openaire", "uketd_dc", "rioxx_terms", "rioxx_terms_cc0")
)
```

## Arguments

- base_url:

  The OAI-PMH endpoint base URL. Set to https://ora.ox.ac.uk/oai2

- metadata_prefix:

  Prefix or code for metadata format to retrieve for each record
  returned. List of all the metadata formats supported can be retrieved
  through a call to `ora_list_metadata_formats()`. Default is
  **"oai_dc"** for the OAI-PMH standard Dublin Core (DC).

## Value

XML OAI response

## Metadata Format

Metadata for each item (record) is available in several formats. Not all
formats are supported for all records.

## Examples

``` r
ora_list_records()
#> {xml_document}
#> <OAI-PMH schemaLocation="http://www.openarchives.org/OAI/2.0/ http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd" xmlns="http://www.openarchives.org/OAI/2.0/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
#> [1] <responseDate>2026-02-01T22:06:34Z</responseDate>
#> [2] <request metadataPrefix="oai_dc" verb="ListRecords">https://ora.ox.ac.uk/ ...
#> [3] <ListRecords>\n  <record>\n    <header>\n      <identifier>oai:ora.ox.ac. ...
ora_list_records_id()
#> {xml_document}
#> <OAI-PMH schemaLocation="http://www.openarchives.org/OAI/2.0/ http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd" xmlns="http://www.openarchives.org/OAI/2.0/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
#> [1] <responseDate>2026-02-01T22:06:37Z</responseDate>
#> [2] <request metadataPrefix="oai_dc" verb="ListIdentifiers">https://ora.ox.ac ...
#> [3] <ListIdentifiers>\n  <header>\n    <identifier>oai:ora.ox.ac.uk:uuid:0000 ...
```
