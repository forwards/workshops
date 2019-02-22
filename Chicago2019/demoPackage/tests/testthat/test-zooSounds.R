library(testthat)

test_that("goToTheZoo produces expected strings", {
  allSounds <- as.character(goToTheZoo("giraffe", "moo"))
  expect_equal(allSounds, "The giraffe goes moo!")
})

test_that("goToTheZoo fails with numbers", {
  expect_error(goToTheZoo(1, 2))
})
