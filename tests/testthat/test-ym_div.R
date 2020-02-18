test_that("ym_div works", {
  expect_equal(yyyymm:::ym_div(yyyymm::ym_seq(201303, 201305), ng = 3), c(201301, 201301, 201305))
})

test_that("ym_div fails", {
  expect_error(yyyymm:::ym_div(200100, ng = 3))
})
