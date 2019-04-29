README
================
John Friedman
4/29/2019

## Overview

`"binomial"` is a [R](http://www.r-project.org/) package containing
functions to simulate and graph the binomial distribution

  - `bin_choose` returns combinations of successes and trials
  - `bin_kurtosis` returns kurtosis given number of trials and
    probability
  - `bin_mean` returns mean given number of trials and probability
  - `bin_mode` returns mode given number of trials and probability
  - `bin_skewness` returns skewness given number of trials and
    probability
  - `bin_variance` returns variance given number of trials and
    probability
  - `bin_probability` returns probability given number of
    successes,trials and probability
  - `binvar` creates an object of class Binomial variable
  - `bindis` creates a data frame of successes by probability
  - `plot.bindis` plots bindis objects
  - `bincum` creates a data frame of successes summed over probability
  - `plot.bincum` plots bincum objects

## Motivation

This package was made for the Class Stat 133 at UC Berkeley.

## Installation

Use `"devtools"` to install from github:

``` r
# development version from GitHub:
#install.packages("devtools") 
# install "binomial" (no vignettes)
devtools::install_github("https://github.com/stat133-sp19/hw-stat133-jgoman99/tree/master/workout03")
# install "binomial" (has vignettes)
devtools::install_github("https://github.com/stat133-sp19/hw-stat133-jgoman99/tree/master/workout03", build_vignettes = TRUE)
```

## Usage

``` r
library(binomial)
library(ggplot2)
#bin choose
bin_choose(1,4)
#> [1] 4

#bin kurtosis
bin_kurtosis(3,.3)
#> [1] -0.4126984

#bin mode 
bin_mode(4,.3)
#> [1] 1

#bin mean
bin_mean(4,.5)
#> [1] 2

#bin skewness
bin_skewness(4,.2)
#> [1] 0.75

#bin variance
bin_variance(3,.5)
#> [1] 0.75

#bin probability
bin_probability(4,5,.4)
#> [1] 0.0768

#bin variance
binvar(4,.4)
#> "Binomial variable"
#> 
#> Paramaters
#> - number of trials: 4 
#> - prob of success: 0.4

#bin distribution
bindis(4,.2)
#>   successes probability
#> 1         0      0.4096
#> 2         1      0.4096
#> 3         2      0.1536
#> 4         3      0.0256
#> 5         4      0.0016
plot(bindis(4,.2))
```

![](README-unnamed-chunk-2-1.png)<!-- -->

``` r

#bin cumulative
bincum(6,.4)
#>   successes probability cumulative
#> 1         0    0.046656   0.046656
#> 2         1    0.186624   0.233280
#> 3         2    0.311040   0.544320
#> 4         3    0.276480   0.820800
#> 5         4    0.138240   0.959040
#> 6         5    0.036864   0.995904
#> 7         6    0.004096   1.000000
plot(bincum(6,.4))
```

![](README-unnamed-chunk-2-2.png)<!-- -->
