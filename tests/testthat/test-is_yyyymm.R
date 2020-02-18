test_that("is_yyyymm fails", {
  expect_error(yyyymm:::is_yyyymm(999))
  expect_error(yyyymm:::is_yyyymm(201913))
  expect_error(yyyymm:::is_yyyymm(201912.5))
})

test_that("is_yyyymm works", {
  expect_true(yyyymm:::is_yyyymm(201912))
})
