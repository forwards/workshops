
test_that("goToTheZoo produces expected strings", {
  allSounds <- as.character(goToTheZoo("giraffe", "moo"))
  testthat::expect_equal(allSounds, "The giraffe goes moo!")
})

test_that("goToTheZoo fails with numbers", {
  testthat::expect_error(goToTheZoo(1, 2))
})
