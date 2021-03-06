% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fbind.R
\name{fbind}
\alias{fbind}
\title{Bind two factors}
\usage{
fbind(a, b)
}
\arguments{
\item{a}{factor}

\item{b}{factor}
}
\value{
factor
}
\description{
Create a new factor from two existing factors, where the new factor's levels
are the union of the levels of the input factors.
}
\details{
Why even make this?

(a <- factor(c("character", "hits", "your", "eyeballs")))
(b <- factor(c("but", "integer", "where it", "counts")))
c(a, b)
> [1] 1 3 4 2 1 3 4 2
Huh? Many people do not expect the result of catenating
two factors to be an integer vector consisting of the numbers
1, 2, 3, and 4.

So, we made fbind(), a function that creates a new factor from
two factors, a potentially less surprising behaviour.
}
\examples{
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])

}

