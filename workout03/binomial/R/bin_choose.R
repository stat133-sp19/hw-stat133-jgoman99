
#Private function to aid in vectorization
bin_find <- function(trials,successes)
{
  if (successes > trials)
  {
    stop("There can't be more successes than trials")
  }


  x<- factorial(trials)/(factorial(successes)*factorial(trials-successes))
  return(x)
}

#' @title Binomial Choose
#' @description uses sapply over bin_find to vectorize possible combinations
#' @param successes  number of sucesses
#' @param trials number of trials
#' @return returns numeric vector of total combinations
#' @examples
#' bin_choose(2,5)
#' bin_choose(successes=5, trials=15)
#' bin_choose(1:5, 55)
#' @export
bin_choose <- function(successes, trials)
{
  return(sapply(trials,bin_find,successes))
}
