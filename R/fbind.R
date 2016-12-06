# (a <- factor(c("character", "hits", "your", "eyeballs")))
# (b <- factor(c("but", "integer", "where it", "counts")))
# c(a, b)
# > [1] 1 3 4 2 1 3 4 2
# Huh? Many people do not expect the result of catenating
# two factors to be an integer vector consisting of the numbers 1, 2, 3, and 4.

# Here’s fbind(), a function that creates a new factor from two factors, a potentially less surprising result:

fbind <- function(a, b) {
	factor(c(as.character(a), as.character(b)))
}

# fbind(a,b)
