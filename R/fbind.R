#' Bind two factors
#'
#' Create a new factor from two existing factors, where the new factor's levels
#' are the union of the levels of the input factors.
#'
#' @param a factor
#' @param b factor
#'
#' @return factor
#' @export
#' @examples
#' fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#'
#' Why even make this?
#'
#' (a <- factor(c("character", "hits", "your", "eyeballs")))
#' (b <- factor(c("but", "integer", "where it", "counts")))
#' c(a, b)
#' > [1] 1 3 4 2 1 3 4 2
#' Huh? Many people do not expect the result of catenating
#' two factors to be an integer vector consisting of the numbers
#' 1, 2, 3, and 4.
#'
#' So, we made fbind(), a function that creates a new factor from
#' two factors, a potentially less surprising behaviour.
fbind <- function(a, b) {
	factor(c(as.character(a), as.character(b)))
}

