###THIS IS NOT AN END RESULT!!!!!
###I'm NOT SURE WHAT THE R FILESTRUCTURE SHOULD LOOK LIKE, THIS IS A DUMP FOR NOW

#private function, checks if 0 <= prob <=1

check_prob <- function(prob)
{
  if(0 <= prob && prob <= 1)
  {
    return(TRUE)
  }
  else
  {
    stop("prob has to be a number betwen 0 and 1")
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
#success vectorized
#trials int

check_successes <- function(success, trials)
{
  if (typeof(success)!= "integer")
  {
    stop("invalid success value")
  }
  if (typeof(trials)!= "integer")
  {
    stop("trials must be integer value")
  }
  for (i in 1: length(success))
  {
    if (success[i] > i)
    {
      stop('success cannot be greater than trials')
    }
  }
  return(TRUE)
}
