#### Preamble ####
# Purpose: Tests data made by the AER of instructor ratings 
# Author: Marcin Jaczynski 
# Data: 20 April 2023
# Contact: marcin.jaczynski@mail.utoronto.ca
# License: MIT
# Pre-requisites: install AER package 
# Any other information needed? - 


#### Workspace setup ####
library(tidyverse)
library(testthat)

#### Test data ####

# check if the number of entries is correct 
test_that("Data frame has 463 rows", {
  df <- sim_data 
  expect_equal(nrow(df), 463)
})

# making simulated model 
fm_simulated <- lm(random_eval ~ random_beauty, data = sim_data)
summary(fm_simulated)

# Test that the p-value is > 0 
test_that("P-value is > 0 ", {
  summary <- summary(fm_simulated)
  expect_true(all(summary$coefficient[, 4] > 0))
})

# Test that random evaluations are not zero 
test_that("Random eval is not zero", {
  mean_random <- mean(sim_data$random_eval)
  expect_true(mean_random > 0)
})





