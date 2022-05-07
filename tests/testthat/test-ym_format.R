testthat::test_that("ym_format works", {
  testthat::expect_equal(yyyymm::ym_format(c(200902, 201912), "%m %Y"), c("02 2009", "12 2019"))
})

testthat::test_that("ym_format fails", {
  testthat::expect_error(yyyymm:::ym_format(200100, "%B %Y"))
})
