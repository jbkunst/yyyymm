# Year month string to date

Year month string to date

## Usage

``` r
ym_to_date(ym = c(200902, 201912), day = 1)
```

## Arguments

- ym:

  ym

- day:

  day

## Examples

``` r

dts <- ym_to_date(c(200902, 201912))

dts
#> [1] "2009-02-01" "2019-12-01"

class(dts)
#> [1] "Date"
```
