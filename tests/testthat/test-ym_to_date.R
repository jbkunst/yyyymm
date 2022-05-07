testthat::test_that("ym_to_date works", {
  testthat::expect_equal(yyyymm::ym_to_date(ym = 200902, day = 1), as.Date("2009-02-01"))
})

testthat::test_that("ym_to_date fails", {
  testthat::expect_error(yyyymm::ym_to_date(ym = 200100, day = 1))
})
