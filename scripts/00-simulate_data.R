#### Preamble ####
# Purpose: Simulates data made by the AER of instructor ratings 
# Author: Marcin Jaczynski 
# Data: 20 April 2023
# Contact: marcin.jaczynski@mail.utoronto.ca
# License: MIT
# Pre-requisites: install AER package 
# Any other information needed? - 


#### Workspace setup ####
library(tidyverse)
library(purrr)


#### Simulate data ####

set.seed(123)

#Create list of possible answers in random data (excluding nonresponse answers since they will be omitted in real data)
minority = c("yes", "no")
age = c(29, 73)
gender = c("male", "female")
credits = c("single", "more")
beauty = c(-2.0, 2.0)
eval = c(0, 5.0)
division = c("upper", "lower")
native = c("yes", "no")
tenure = c("yes", "no")
students = c(5, 400)
allstudents = c(5, 600)

#Create random probabilities of categorical answers for data
random_minority = sample(minority, 463, replace = TRUE, prob = c(0.5, 0.5))
random_age = rdunif(463, age[2], age[1]) # integers, end first then start 
random_gender = sample(gender, 463, replace = TRUE, prob = c(0.5, 0.5))
random_credits = sample(credits, 463, replace = TRUE, prob = c(0.5, 0.5))
random_beauty = runif(463, beauty[1], beauty[2]) # float, start first then end 
random_eval = runif(463, eval[1], eval[2])
random_division = sample(division, 463, replace = TRUE, prob = c(0.5, 0.5))
random_native = sample(native, 463, replace = TRUE, prob = c(0.5, 0.5))
random_tenure = sample(tenure, 463, replace = TRUE, prob = c(0.5, 0.5))
random_students = rdunif(463, students[2], students[1])
random_allstudents = rdunif(463, allstudents[2], allstudents[1])
  
#Compose simulated data in a data frame with all variables.
simulated_clean <- data.frame(random_minority, random_age, random_gender, random_credits, 
                              random_beauty, random_eval, random_division, random_native,
                              random_tenure, random_students, random_allstudents)

#Quick display of table
tibble(simulated_clean)


# compare the end result with the simulation 




