library("ggplot2")

#' @title  Binomial Distribution
#' @description finds the probability per success for a number of trials
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a data frame of class "bindis" of probabilities
#' @examples
#' bindis(trials = 5L, prob = 0.5)
#' bindis(trials = 3L, prob = 0.1)
#' plot.bindis(bindis(4,.1))
#' @export

bindis <- function(trials,prob)
{
  x<- data.frame(0:trials,bin_probability(0:trials,trials,prob))
  y <- x
  names(y) <- c("successes","probability")
  class(y) <- c("bindis","data.frame")
  return(y)
}

#' @export
plot.bindis <- function(bindis)
{
  ggplot(data=bindis, aes(x=successes, y=probability)) +
    geom_bar(stat="identity") +ggtitle("binomial distribution")

}
