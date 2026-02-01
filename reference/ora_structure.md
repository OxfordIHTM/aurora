# Structure ORA XML outputs

Structure ORA XML outputs

## Usage

``` r
ora_structure_identify(ora_xml)

ora_structure_meta_formats(ora_xml)
```

## Arguments

- ora_xml:

  XML outputs.

## Value

A tibble outputs.

## Examples

``` r
ora_identify()
#> # A tibble: 1 × 13
#>   responseDate         request repositoryName baseURL protocolVersion adminEmail
#>   <chr>                <chr>   <chr>          <chr>   <chr>           <chr>     
#> 1 2026-02-01T22:06:37Z https:… ORA - Oxford … https:… 2.0             ora-dev@b…
#> # ℹ 7 more variables: earliestDatestamp <chr>, deletedRecord <chr>,
#> #   granularity <chr>, scheme <chr>, repositoryIdentifier <chr>,
#> #   delimiter <chr>, sampleIdentifier <chr>
ora_list_meta_formats()
#> # A tibble: 9 × 5
#>   responseDate         request           metadataPrefix schema metadataNamespace
#>   <chr>                <chr>             <chr>          <chr>  <chr>            
#> 1 2026-02-01T22:06:38Z https://ora.ox.a… oai_dc         http:… http://www.opena…
#> 2 2026-02-01T22:06:38Z https://ora.ox.a… solo_dc        http:… http://ora.ox.ac…
#> 3 2026-02-01T22:06:38Z https://ora.ox.a… uketd_dc       http:… http://naca.cent…
#> 4 2026-02-01T22:06:38Z https://ora.ox.a… datacite_dc    https… https://schema.d…
#> 5 2026-02-01T22:06:38Z https://ora.ox.a… base_dc        http:… http://www.opena…
#> 6 2026-02-01T22:06:38Z https://ora.ox.a… oai_openaire   https… http://namespace…
#> 7 2026-02-01T22:06:38Z https://ora.ox.a… rioxx_terms    https… http://www.rioxx…
#> 8 2026-02-01T22:06:38Z https://ora.ox.a… rioxx_terms_c… https… http://www.rioxx…
#> 9 2026-02-01T22:06:38Z https://ora.ox.a… unpaywall_dc   http:… http://www.opena…
```
