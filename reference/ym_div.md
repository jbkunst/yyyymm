# Year month to semester, quarter, trimester

Year month to semester, quarter, trimester

## Usage

``` r
ym_div(ym = format(ymd(20170101) + months(0:11), "%Y%m"), ng = 4)
```

## Arguments

- ym:

  ym

- ng:

  number of groups

  ym_seq(201303, 201512)

  seqym \<- ym_seq(201303, 201512) seqym

  ym_div(seqym, ng = 3) ym_div(seqym, ng = 4)
