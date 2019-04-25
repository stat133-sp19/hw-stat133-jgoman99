#' @title  Binomial Mean
#' @description gives the mean of the binomial distribution
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a numeric mean
#' @examples
#' bin_mean(trials = 5L, prob = 0.5)
#' bin_mean(3L, .3)
#' @export
bin_mean <- function(trials,prob)
{
  check_trials(trials)
  check_prob(prob)

  return(aux_mean(trials,prob))
}

#' @title  Binomial Variance
#' @description gives the variance of the binomial distribution
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a numeric variance
#' @examples
#' bin_variance(trials = 5L, prob = 0.5)
#' bin_variance(3L, .3)
#' @export
bin_variance <- function(trials,prob)
{
  check_trials(trials)
  check_prob(prob)

  return(aux_variance(trials,prob))
}

#' @title  Binomial Mode
#' @description gives the mode of the binomial distribution
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a numeric mode
#' @examples
#' bin_mode(trials = 5L, prob = 0.5)
#' bin_mode(3L, .3)
#' @export
bin_mode <- function(trials,prob)
{
  check_trials(trials)
  check_prob(prob)

  return(aux_mode(trials,prob))
}

#' @title  Binomial Skewness
#' @description gives the skewness of the binomial distribution
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a numeric skewness
#' @examples
#' bin_skewness(trials = 5L, prob = 0.5)
#' bin_skewness(3L, .3)
#' @export
bin_skewness <- function(trials,prob)
{
  check_trials(trials)
  check_prob(prob)

  return(aux_skewness(trials,prob))
}

#' @title  Binomial Kurtosis
#' @description gives the kurtosis of the binomial distribution
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a numeric kurtosis
#' @examples
#' bin_kurtosis(trials = 5L, prob = 0.5)
#' bin_kurtosis(3L, .3)
#' @export
bin_kurtosis <- function(trials,prob)
{
  check_trials(trials)
  check_prob(prob)

  return(aux_kurtosis(trials,prob))
}
