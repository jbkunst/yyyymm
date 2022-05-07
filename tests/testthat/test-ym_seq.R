testthat::test_that("ym_seq works", {
  testthat::expect_equal(yyyymm::ym_seq(201303, 201306), c(201303, 201304, 201305, 201306))
})

testthat::test_that("ym_seq fails", {
  testthat::expect_error(yyyymm:::ym_seq(200100))
})
