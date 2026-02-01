# List sets of work

List sets of work

## Usage

``` r
ora_list_sets(base_url = "https://ora.ox.ac.uk/oai2")
```

## Arguments

- base_url:

  The OAI-PMH endpoint base URL. Set to https://ora.ox.ac.uk/oai2

## Value

XML OAI response

## List Sets

ORA records are available for selective harvesting as a separate set
based on their **Type of work** within the ORA system, e.g. *"thesis"*,
*"dataset"*, *"journal article"*.

## Examples

``` r
ora_list_sets()
#> {xml_document}
#> <OAI-PMH schemaLocation="http://www.openarchives.org/OAI/2.0/ http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd" xmlns="http://www.openarchives.org/OAI/2.0/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
#> [1] <responseDate>2026-02-01T22:08:11Z</responseDate>
#> [2] <request verb="ListSets">https://ora.ox.ac.uk/oai2</request>
#> [3] <ListSets>\n  <set>\n    <setSpec>journal_article</setSpec>\n    <setName ...
```
