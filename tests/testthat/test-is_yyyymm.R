testthat::test_that("is_yyyymm works", {
  testthat::expect_true(yyyymm:::is_yyyymm(201912))
})

testthat::test_that("is_yyyymm fails", {
  testthat::expect_error(yyyymm:::is_yyyymm(999))
  testthat::expect_error(yyyymm:::is_yyyymm(201913))
  testthat::expect_error(yyyymm:::is_yyyymm(201912.5))
})
