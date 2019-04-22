###DO I NEED STOPS FOR THESE FUNCTIONS?
###Ran basic tests, checked out

#private function, returns binomial mean
aux_mean <- function(trials,prob)
{
  return(trials*prob)
}


#private function, returns binomial variance
aux_variance <- function(trials,prob)
{
  return((trials*prob)*(1-prob))
}

#private function, returns binomial mode
aux_mode <- function(trials,prob)
{
  return(as.integer(trials*prob+prob))
}

#private function, returns binomial variance
aux_skewness <- function(trials,prob)
{
  return((1-2*prob)/(sqrt(trials*prob*(1-prob))))
}

#private function, returns binomial variance
aux_kurtosis <- function(trials,prob)
{
  return((1-6*prob*(1-prob))/(trials*prob*(1-prob)))
}
