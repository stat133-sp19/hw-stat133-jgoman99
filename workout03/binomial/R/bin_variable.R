#' @title Binomial Random Variable
#' @desc creates an object of the binvar class
#' @param trials, the number of trials
#' @param prob, the probability of a success
#' @return returns a binvar object
#' @examples
#' ###ADD examples
#' @export
binvar <- function(trials, prob)
{
  check_trials(trials)
  check_prob(prob)
  x <- list(trials,prob)
  class(x) <- "binvar"
  return(x)
}

#' @export
print.binvar <- function(binvar)
{
  cat('"Binomial variable"\n\n')
  cat("Paramaters\n")
  cat("- number of trials:", binvar[[1]],"\n")
  cat("- prob of success:", binvar[[2]])


}

#' @export
summary.binvar <- function(binvar)
{
  x <- list(binvar[[1]],binvar[[2]],aux_mean(binvar[[1]],binvar[[2]]),
            aux_variance(binvar[[1]],binvar[[2]]),aux_mode(binvar[[1]],binvar[[2]]),
            aux_skewness(binvar[[1]],binvar[[2]]),aux_kurtosis(binvar[[1]],binvar[[2]]))

  return(x)
}

#' @export
print.summary.binvar <- function(summary.binvar)
{
  cat('"Summary Binomial"\n\n')
  cat("Paramaters\n")
  cat("- number of trials:", summary.binvar[[1]],"\n")
  cat("- prob of success:", summary.binvar[[2]],"\n\n")
  cat("Measures\n")
  cat("- mean :", summary.binvar[[3]],"\n")
  cat("- variance :", summary.binvar[[4]],"\n")
  cat("- mode :", summary.binvar[[5]],"\n")
  cat("- skewness :", summary.binvar[[6]],"\n")
  cat("- kurtosis :", summary.binvar[[7]],"\n")
}
