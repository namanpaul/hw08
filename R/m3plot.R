#Assuming we have numeric factors, in this case, which would be a bunch of numbers
var1 <- c(1,23,4,55,6,7,89)
#let's print them and see
var1

#difference in the largest and smallest value of the factors
max(var1) - min(var1)
mean(var1)

#time to find out if we can see any such examples in the in-built R data examples
#View(mtcars)

#say I consider horse power to be one of the factors in any x analysis
(max_hp <- max(mtcars$hp))
(min_hp <- min(mtcars$hp))
(mean_hp <- mean(mtcars$hp))

plot_them <- c(max_hp, mean_hp, min_hp)
plot_them

barplot(plot_them, main="horse-power", xlab="Max - Mean - Min")

#' A function to plot the maximum, mean and minimum values of a numerical factor
#'
#' @param x is the input vector
#'
#' @return plot
#' @export
#' @examples
#' m3plot(mtcars$hp)
m3plot <- function(x) {
  stopifnot(is.numeric(x))
  a <- max(x)
  b <- min(x)
  c <- mean(x)
  d <- c(a,b,c)
  barplot(plot_them, main="The maximum, mean and min values", xlab="Max - Mean - Min")
}

#let's check it!
#m3plot(mtcars$hp)
