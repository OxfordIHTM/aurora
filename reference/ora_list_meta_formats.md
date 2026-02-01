# List metadata formats

List metadata formats

## Usage

``` r
ora_list_meta_formats(base_url = "https://ora.ox.ac.uk/oai2", tabular = TRUE)
```

## Arguments

- base_url:

  The OAI-PMH endpoint base URL. Set to https://ora.ox.ac.uk/oai2.

- tabular:

  Logical. Should response be structured into a table? Default is TRUE.

## Value

A data.frame (default) or an XML document (if `tabular = FALSE`) with
identifying information on the OAI metadata formats.

## Examples

``` r
ora_list_meta_formats()
#> # A tibble: 9 × 5
#>   responseDate         request           metadataPrefix schema metadataNamespace
#>   <chr>                <chr>             <chr>          <chr>  <chr>            
#> 1 2026-02-01T22:08:07Z https://ora.ox.a… oai_dc         http:… http://www.opena…
#> 2 2026-02-01T22:08:07Z https://ora.ox.a… solo_dc        http:… http://ora.ox.ac…
#> 3 2026-02-01T22:08:07Z https://ora.ox.a… uketd_dc       http:… http://naca.cent…
#> 4 2026-02-01T22:08:07Z https://ora.ox.a… datacite_dc    https… https://schema.d…
#> 5 2026-02-01T22:08:07Z https://ora.ox.a… base_dc        http:… http://www.opena…
#> 6 2026-02-01T22:08:07Z https://ora.ox.a… oai_openaire   https… http://namespace…
#> 7 2026-02-01T22:08:07Z https://ora.ox.a… rioxx_terms    https… http://www.rioxx…
#> 8 2026-02-01T22:08:07Z https://ora.ox.a… rioxx_terms_c… https… http://www.rioxx…
#> 9 2026-02-01T22:08:07Z https://ora.ox.a… unpaywall_dc   http:… http://www.opena…
```
