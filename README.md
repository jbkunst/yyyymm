
<!-- README.md is generated from README.Rmd. Please edit that file -->

# yyyymm

<!-- badges: start -->

<!-- badges: end -->

The goal of yyyymm is to …

## Installation

``` r
# install.packages("devtools")
devtools::install_github("jbkunst/yyyymm")
```

## Examples

### `ym_to_date`

``` r
library(yyyymm)
ym_to_date(ym = c(200902, 201912), day = 1)
#> [1] "2009-02-01" "2019-12-01"
```

### `ym_diff`

``` r
ym_diff(ym = c(200902, 201912), ym2 = c(200901, 201712))
#> [1]  1 24
```

### `ym_add_months`

``` r
ym_add_months(c(200902, 201912), months = c(1, -12))
#> [1] 200903 201812
```

### `ym_format`

``` r
ym_format(c(200902, 201912), "%B del %Y")
#> [1] "febrero del 2009"   "diciembre del 2019"
```

### `ym_seq`

``` r
ym_seq(201303, 201512)
#>  [1] 201303 201304 201305 201306 201307 201308 201309 201310 201311 201312
#> [11] 201401 201402 201403 201404 201405 201406 201407 201408 201409 201410
#> [21] 201411 201412 201501 201502 201503 201504 201505 201506 201507 201508
#> [31] 201509 201510 201511 201512
```

### `is.yyyymm`

``` r
yyyymm:::is.yyyymm(999)
#> Error in yyyymm:::is.yyyymm(999): ym > 100001 is not TRUE

yyyymm:::is.yyyymm(1111111)
#> Error in yyyymm:::is.yyyymm(1111111): ym <= 999912 is not TRUE

yyyymm:::is.yyyymm(201900)
#> Error in yyyymm:::is.yyyymm(201900): month >= 1 is not TRUE

yyyymm:::is.yyyymm(201913)
#> Error in yyyymm:::is.yyyymm(201913): month <= 12 is not TRUE

yyyymm:::is.yyyymm(201913.5)
#> Error in yyyymm:::is.yyyymm(201913.5): ym == as.integer(ym) is not TRUE
```

### `ym_div`

``` r
year <- format(lubridate::ymd(20170101) + months(0:11), "%Y%m")
year
#>  [1] "201701" "201702" "201703" "201704" "201705" "201706" "201707"
#>  [8] "201708" "201709" "201710" "201711" "201712"

ym_div(year, ng = 3)
#>  [1] 201701 201701 201701 201701 201705 201705 201705 201705 201709 201709
#> [11] 201709 201709

ym_div(year, ng = 4)
#>  [1] 201701 201701 201701 201704 201704 201704 201707 201707 201707 201710
#> [11] 201710 201710
```
