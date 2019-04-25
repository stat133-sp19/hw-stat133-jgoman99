library("ggplot2")

#' @title  Cumulative Binomial Distribution
#' @description gives the area under the probability density function
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a data frame of class "bincum" of probability density
#' @examples
#' bincum(trials = 5L, prob = 0.5)
#' bincum(3L, .3)
#' @export

bincum <- function(trials,prob)
{
  x<- data.frame(0:trials,bin_probability(0:trials,trials,prob))
  y <- x
  names(y) <- c("successes","probability")
  y$cumulative <- cumsum(y$probability)
  class(y) <- c("bincum","data.frame")
  return(y)
}

#' @export
plot.bincum <- function(bincum)
{
  ggplot(data=bincum, aes(x=successes, y=cumulative)) +
    geom_line() + geom_point() + ggtitle("cumulative binomial distribution")

}
