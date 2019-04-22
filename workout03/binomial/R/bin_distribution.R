library("ggplot2")

#' @title  Binomial Distribution
#' @description finds the probability per success for a number of trials
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a data frame of class "bindis" of probabilities
#' @examples
#' bin_distribution(trials = 5L, prob = 0.5)
#' bin_distribution(3L, .3)
#' @export

bin_distribution <- function(trials,prob)
{
  x<- data.frame(0:trials,bin_probability(0:trials,trials,prob))
  y <- x
  names(y) <- c("successes","probability")
  class(y) <- c("bindis","data.frame")
  return(y)
}

#' @export
plot <- function(bindis)
{
  ggplot(data=bindis, aes(x=successes, y=probability)) +
    geom_bar(stat="identity") +ggtitle("binomial distribution")

}
