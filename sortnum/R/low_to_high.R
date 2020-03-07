#' Sort a Numeric Vector in Increasing Order
#'
#' \code{low_to_high} sorts the values of a numeric vector in
#' increasing order.
#'
#' This is a convenience function that is a wrapper around
#' \code{\link{sort.int}}.
#'
#' @param x A numeric vector.
#' @param na.rm A logical value indicating whether to remove missing values
#' before sorting.
#' @return A vector with the values sorted in increasing order.
#' @export
#'
#' @examples
#' x <- c(3, 7, 2, NA)
#' low_to_high(x)
#' low_to_high(x, na.rm = TRUE)
low_to_high <- function(x, na.rm = FALSE){
    stopifnot(is.numeric(x))
    if (na.rm) x <- na.omit(x)
    sort.int(x, decreasing = FALSE, na.last = TRUE)
}
