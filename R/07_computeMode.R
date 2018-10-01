#' Mode
#'
#' @description Compute mode (most frequent value). The following cases are
#' covered: empty input, only \code{NA} values, all values are equal, mode not
#' unique (i.e., several values appear with the same frequence).
#'
#' @param x Vector
#' @param notUniqueVal character: return value if mode is not unique
#' @param naVal character: return value if all values in \code{x} are \code{NA}
#' @param emptyVal character: return value if \code{x} is empty
#'
#' @return Character vector
#'
#' @export
#'
#' @examples
#' mode(c(1, 1, 2, 3))
#' mode(1:5)
#' mode(1:5, 5)
#' mode(NA, NA, NA)
mode <- function(x,
                 notUniqueVal = "notUnique",
                 naVal = "allNA",
                 emptyVal = "noValues") {
  if (length(x) == 0) {
    emptyVal
  } else if (all(is.na(x))) {
    naVal
  } else if (length(unique(x[!is.na(x)])) == 1) {
    as.character(x[!is.na(x)][1])
  } else {
    tab <- sort(table(x), decreasing = TRUE)
    if (tab[1] == tab[2]) {
      as.character(notUniqueVal)
    } else {
      names(tab[1])
    }
  }
}
