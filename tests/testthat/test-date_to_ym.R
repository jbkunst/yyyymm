test_that("date_to_ym works", {
  expect_equal(yyyymm::date_to_ym(d = as.Date("2009-02-01")), "200902")
  expect_equal(yyyymm::date_to_ym(d = "2009-02-01"), "200902")
})

test_that("date_to_ym fails", {
  expect_error(yyyymm::date_to_ym(d = 200100))
})
