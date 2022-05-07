testthat::test_that("ym_diff works", {
  testthat::expect_equal(yyyymm::ym_diff(ym = 200902, ym2 = 200901), 1)
})

testthat::test_that("ym_diff fails", {
  testthat::expect_error(yyyymm::ym_diff(ym = 200100, ym2 = 200901))
})
