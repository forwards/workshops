test_that("high_to_low sorts in descending order", {
  x <- c(3, 7, 2)
  expect_equal(high_to_low(x), c(7, 3, 2))
})

test_that("high_to_low handles NA correctly", {
  y <- c(3, 7, 2, NA)
  expect_equal(high_to_low(y), c(7, 3, 2, NA))
  expect_equal(high_to_low(y, na.rm = TRUE), c(7, 3, 2))
})

test_that("high_to_low fails for non-numeric vectors", {
  expect_error(high_to_low(c(TRUE, FALSE)))
  expect_error(high_to_low(c("a", "b")))
})
