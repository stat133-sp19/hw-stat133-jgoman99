#' @title Binomial Probability
#' @description calculates binomial probability
#' @param successes the number of successes
#' @param trials the number of trials
#' @param prob the probability of a success
#' @return returns the binomial probability
#' @examples
#' bin_probability(successes = 2, trials = 5L, prob = 0.5)
#' bin_probability(successes = 0:2, trials = 5L, prob = 0.5)
#' bin_probability(successes = 55, trials = 100L, prob = 0.45)
#' @export

bin_probability <- function(successes, trials, prob)
{
  check_trials(trials)
  check_prob(prob)
  check_successes(successes,trials)

  return(bin_choose(successes,trials)*((prob)^successes)*(1-prob)^(trials-successes))
}
