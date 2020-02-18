test_that("ym_seq works", {
  expect_equal(yyyymm::ym_seq(201303, 201306), c(201303, 201304, 201305, 201306))
})

test_that("ym_seq fails", {
  expect_error(yyyymm:::ym_seq(200100))
})
