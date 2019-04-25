library(testthat)

context("Check aux_mean")
test_that("aux mean returns correctly", {
  expect_equal(aux_mean(5,.5),2.5)
  expect_equal(aux_mean(trials =5, prob =.5),2.5)

})
test_that("aux mean doesn't work for invalid", {
  expect_error(aux_mean(3))

})

context("Check aux_variance")
test_that("aux_variance returns correctly", {
  expect_equal(aux_variance(5,.5),1.25)
  expect_equal(aux_variance(trials =5, prob =.5),1.25)

})
test_that("aux_variance doesn't work for invalid", {
  expect_error(aux_variance(3))

})

context("Check aux_mode")
test_that("aux_mode returns correctly", {
  expect_equal(aux_mode(5,.5),3)
  expect_equal(aux_mode(trials =5, prob =.5),3)

})
test_that("aux_mode doesn't work for invalid", {
  expect_error(aux_mode(3))

})

context("Check aux_skewness")
test_that("aux_skewness returns correctly", {
  expect_equal(aux_skewness(5,.5),0)
  expect_equal(aux_skewness(trials =5, prob =.5),0)

})
test_that("aux_skewness doesn't work for invalid", {
  expect_error(aux_skewness(3))

})

context("Check aux_kurtosis")
test_that("aux_kurtosis returns correctly", {
  expect_equal(aux_kurtosis(5,.5),-.4)
  expect_equal(aux_kurtosis(trials =5, prob =.5),-.4)

})
test_that("aux_kurtosis doesn't work for invalid", {
  expect_error(aux_kurtosis(3))

})
