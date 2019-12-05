
<!-- README.md is generated from README.Rmd. Please edit that file -->

# yyyymm

<!-- badges: start -->

<!-- badges: end -->

The goal of yyyymm is to make easier living with \_periodo\_s format.

## Installation

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

### `ym_div`

``` r
seqym <- ym_seq(201303, 201512)
seqym
#>  [1] 201303 201304 201305 201306 201307 201308 201309 201310 201311 201312
#> [11] 201401 201402 201403 201404 201405 201406 201407 201408 201409 201410
#> [21] 201411 201412 201501 201502 201503 201504 201505 201506 201507 201508
#> [31] 201509 201510 201511 201512

ym_div(seqym, ng = 3)
#>  [1] 201301 201301 201305 201305 201305 201305 201309 201309 201309 201309
#> [11] 201401 201401 201401 201401 201405 201405 201405 201405 201409 201409
#> [21] 201409 201409 201501 201501 201501 201501 201505 201505 201505 201505
#> [31] 201509 201509 201509 201509

ym_div(seqym, ng = 4)
#>  [1] 201301 201304 201304 201304 201307 201307 201307 201310 201310 201310
#> [11] 201401 201401 201401 201404 201404 201404 201407 201407 201407 201410
#> [21] 201410 201410 201501 201501 201501 201504 201504 201504 201507 201507
#> [31] 201507 201510 201510 201510
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

## Code of Conduct

Please note that the ‘yyyymm’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
