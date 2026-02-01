# Retrieve information about Oxford University OAI repository

Retrieve information about Oxford University OAI repository

## Usage

``` r
ora_identify(base_url = "https://ora.ox.ac.uk/oai2", tabular = TRUE)
```

## Arguments

- base_url:

  The OAI-PMH endpoint base URL. Set to https://ora.ox.ac.uk/oai2.

- tabular:

  Logical. Should response be structured into a table? Default is TRUE.

## Value

A data.frame (default) or an XML document (if `tabular = FALSE`) with
identifying information on the OAI repository.

## Examples

``` r
ora_identify()
#> # A tibble: 1 × 13
#>   responseDate         request repositoryName baseURL protocolVersion adminEmail
#>   <chr>                <chr>   <chr>          <chr>   <chr>           <chr>     
#> 1 2026-02-01T22:08:07Z https:… ORA - Oxford … https:… 2.0             ora-dev@b…
#> # ℹ 7 more variables: earliestDatestamp <chr>, deletedRecord <chr>,
#> #   granularity <chr>, scheme <chr>, repositoryIdentifier <chr>,
#> #   delimiter <chr>, sampleIdentifier <chr>
```
