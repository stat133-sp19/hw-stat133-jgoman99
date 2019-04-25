
#private function, checks if 0 <= prob <=1

check_prob <- function(prob)
{
  if(0 <= prob && prob <= 1 && length(prob)==1)
  {
    return(TRUE)
  }
  else
  {
    stop("prob has to be a number betwen 0 and 1 & must be length 1")
  }
}

#private function, checks if trial is nonnnegative integer

check_trials <- function(trials)
{
  if (typeof(trials) == "integer" && trials >=0)
  {
    return(TRUE)
  }
  else
  {
    stop("invalid trials value")
  }
}


#private function, checks if successes are less than trials
check_successes <- function(successes,trials)
{
  x <- successes > trials
  if (sum(x) == 0)
  {
    return(TRUE)
  }
  else
  {
    stop('successes cannot be greater than trials')
  }
}


