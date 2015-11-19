(a <- factor(c("character", "hits", "your", "eyeballs")))
#> [1] character hits      your      eyeballs
#> Levels: character eyeballs hits your
(b <- factor(c("but", "integer", "where it", "counts")))
#> [1] but      integer  where it counts
#> Levels: but counts integer where it
c(a, b)
#> [1] 1 3 4 2 1 3 4 2

#fbind function
fbind <- function(a, b) {
  factor(c(as.character(a), as.character(b)))
}

#used ctrl+l for loading all

exists("fbind", where = ".GlobalEnv", inherits = FALSE)
#> [1] FALSE
fbind(a, b)
