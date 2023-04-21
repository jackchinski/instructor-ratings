#### Preamble ####
# Purpose: Downloads and saves data from AER
# Author: Marcin Jaczynski 
# Data: 20 April 2023
# Contact: marcin.jaczynski@mail.utoronto.ca
# License: MIT
# Pre-requisites: install AER package 
# Any other information needed? - 


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
data("TeachingRatings", package = "AER")

write.csv(TeachingRatings, file = "raw_data.csv")



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         