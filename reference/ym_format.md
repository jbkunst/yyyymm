# Format a year month into a specific date format A wrapper for ym_to_date and format:

Format a year month into a specific date format A wrapper for ym_to_date
and format:

## Usage

``` r
ym_format(ym = c(200902, 201912), format = "%Y%m%d", day = 1)
```

## Arguments

- ym:

  ym

- format:

  format

- day:

  day

## Examples

``` r

ym_format(c(200902, 201912), "%B, %Y")
#> [1] "February, 2009" "December, 2019"
```
