#' Sort a Numeric Vector in Decreasing Order
#'
#' Sort a numeric vector so that the values are in deceasing order.  Missing
#' values are optionally removed or put last.
#'
#' @param x A numeric vector.
#' @param na.rm A logical value indicating whether to remove missing values
#' before sorting.
#' @return A vector with the values sorted in descreasing order.
#' @export
#'
#' @examples
#' x <- c(3, 7, 2, NA)
#' high_to_low(x)
#' high_to_low(x, na.rm = TRUE)
high_to_low <- function(x, na.rm = FALSE){
    stopifnot(is.numeric(x))
    if (na.rm) x <- na.omit(x)
    sort.int(x, decreasing = TRUE, na.last = TRUE)
}
