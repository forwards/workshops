#' goToTheZoo
#'
#' @param animal String
#' @param sound String
#'
#' @return New string
#' @importFrom glue glue
#' @importFrom assertthat assert_that is.string
#' @export
goToTheZoo <- function(animal, sound){

    assertthat::assert_that(
    assertthat::is.string(animal),
    assertthat::is.string(sound))

    glue::glue("The ", animal, " goes ", sound,"!", .sep = "")
}
