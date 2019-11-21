
<!-- README.md is generated from README.Rmd. Please edit that file -->

# yyyymm

<!-- badges: start -->

<!-- badges: end -->

The goal of yyyymm is to …

## Installation

You can install the released version of yyyymm from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("yyyymm")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jbkunst/yyyymm")
```

## Examples

This is a basic example which shows you how to solve a common problem:

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
#> Warning in ym_add_months(c(200902, 201912), months = c(1, -12)): NAs
#> introducidos por coerción
#> [1] NA NA
```

### `ym_format`

``` r
ym_format(c(200902, 201912), "%B del %Y")
#> Warning in ym_format(c(200902, 201912), "%B del %Y"): NAs introducidos por
#> coerción
#> [1] NA NA
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

### `ym_seq`

``` r
ym_seq(201303, 201512)
#>  [1] 201303 201304 201305 201306 201307 201308 201309 201310 201311 201312
#> [11] 201401 201402 201403 201404 201405 201406 201407 201408 201409 201410
#> [21] 201411 201412 201501 201502 201503 201504 201505 201506 201507 201508
#> [31] 201509 201510 201511 201512
```
