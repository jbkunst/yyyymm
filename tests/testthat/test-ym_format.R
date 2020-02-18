test_that("ym_format works", {
  expect_equal(yyyymm::ym_format(c(200902, 201912), "%B %Y"), c("February 2009", "December 2019"))
})

test_that("ym_format fails", {
  expect_error(yyyymm:::ym_format(200100, "%B %Y"))
})
