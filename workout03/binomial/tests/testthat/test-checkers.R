library(testthat)
context("Test check_prob")
test_that("check_prob with ok inputs", {
  expect_true(check_prob(.5))
  expect_true(check_prob(prob =.5))
})
test_that("check_prob is of length 1", {
  expect_error(check_prob(c(1:5)))

})
test_that("check_prob is invalid return error", {
  expect_error(check_prob(2))
})

context("Test check_trial")
test_that("check trials with ok inputs", {
  expect_true(check_trials(5L))
  expect_true(check_trials(trials=5L))
})
test_that("check_trial is nonnegative", {
  expect_error(check_trials(-3L))

})
test_that("check_trial is invalid return error", {
  expect_error(check_trials(2.3))
})

context("Test check_successes")
test_that("check_successes with ok inputs", {
  expect_true(check_successes(3L,5L))
  expect_true(check_successes(successes=3L, trials=5L))
})
test_that("check_successes with invalid return error", {
  expect_error(check_successes(2.3))
  expect_error(check_successes(5L,4L))
})
