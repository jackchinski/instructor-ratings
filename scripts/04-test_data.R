#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


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

#Normally distributed residuals 
test_that("The residuals are normally distributed", {
  model <- lm(random_eval ~ random_beauty, data = sim_data)
  residuals <- resid(model)
  result <- shapiro.test(residuals)
  expect_true(result$p.value > 0.05)
})

# Test that beauty affects eval 
test_that("The random_beauty variable has a significant effect on the eval", {
  model <- lm(random_eval ~ random_beauty, data = df)
  summary <- summary(model)
  expect_true(summary$coefficients[2,4] < 0.05)
})




