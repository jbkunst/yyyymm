test_that("ym_diff works", {
  expect_equal(yyyymm::ym_diff(ym = 200902, ym2 = 200901), 1)
})

test_that("ym_diff fails", {
  expect_error(yyyymm::ym_diff(ym = 200100, ym2 = 200901))
})
