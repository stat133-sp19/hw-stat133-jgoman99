library(testthat)

context("Checking bin choose")
test_that("bin_choose returns expected value",{

  expect_equal(bin_choose(3,5),10) #3 successes, 5 trials
  expect_equal(as.numeric(bin_choose(1:3,5)),as.numeric(c(5,10,10)))
  expect_equal(bin_choose(successes = 3,trials = 5),10)
})
test_that("bin_choose returns error if invalid input", {

  expect_error(bin_choose(5,2))
})

context("Checking bin probability")
test_that("bin_probability returns expected value", {

  expect_equal(bin_probability(3L,4L,.4),.1536)
  expect_equal(as.numeric(bin_probability(3L,4:6,.4)),as.numeric(c(0.15360,0.23040,0.27648)))
  expect_equal(bin_probability(successes = 3L,trials = 4L, prob=.4),.1536)
})
test_that("bin_probability returns error if invalid input", {

  expect_error(bin_probability(5,5,.5))
  expect_error(bin_probability(6L,5L,.5))
  expect_error(bin_probability(5L,5L,-.5))
})


context("Checking bin distribution")
test_that("bindis returns expected value",{
  x <- data.frame(c(.36,.48,.16))
  names(x) <- c("probability")
  class(x) <- c("bindis","data.frame")
  expect_equal(bindis(2L,.4)[2],x)
})

test_that("bin_probability returns error if invalid input", {

  expect_error(bin_probability(5,5,.5))
})
test_that("bin_probability returns right length ", {
  expect_length(bindis(2L,.4),2)
})

context("Checking bin cumulative")
test_that("bincum returns expected value",{
  x <- data.frame(c(.36,.84,1.00))
  names(x) <- c("cumulative")
  class(x) <- c("bincum","data.frame")
  expect_equal(bincum(2L,.4)[3],x)
})

test_that("bincum returns error if invalid input", {

  expect_error(bincum(5,5))
})
test_that("bincum returns right length ", {
  expect_length(bincum(2L,.4),3)
})
