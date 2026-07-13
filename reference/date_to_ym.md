# Date to period string

Date to period string

## Usage

``` r
date_to_ym(d = as.Date(c("2009-02-01", "2019-12-01")))
```

## Arguments

- d:

  yyyy-mm-dd or any valid date or string coercible to date

## Examples

``` r
dtp <- date_to_ym(as.Date(c("2009-02-01", "2019-12-01")))
dtp
#> [1] "200902" "201912"
class(dtp)
#> [1] "character"
```
