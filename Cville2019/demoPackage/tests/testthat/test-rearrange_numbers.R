

test_that("rearrange_numbers returns the right vector length", {
	numvec <- c(79,6,2,,45,9)
    testthat::expect_equal(
		length(rearrange_numbers(numvec)), 6
    )
})

test_that("rearrange_numbers returns expected vector", {
	numvec <- c("3","12","7","9","1")
    testthat::expect_equal(
		rearrange_numbers(numvec), c(4,6,9,12,82)
  )
})
