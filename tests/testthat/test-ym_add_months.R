test_that("ym_add_months works", {
  expect_equal(yyyymm::ym_add_months(c(200902, 201912), months = c(1, -12)), c(200903, 201812))
})

test_that("ym_add_months fails", {
  expect_error(yyyymm:::ym_add_months(200100, months = 1))
})
