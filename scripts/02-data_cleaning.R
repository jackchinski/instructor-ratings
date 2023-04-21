#### Preamble ####
# Purpose: Cleans data made by the AER of instructor ratings 
# Author: Marcin Jaczynski 
# Data: 20 April 2023
# Contact: marcin.jaczynski@mail.utoronto.ca
# License: MIT
# Pre-requisites: install AER package 
# Any other information needed? - 


#### Workspace setup ####
library(tidyverse)
raw_data <- read_csv("inputs/data/raw_data.csv")
# [...UPDATE THIS...]

#### Clean data ####
# [...UPDATE THIS...]
cleaned_data <- na.omit(raw_data)
cleaned_data <- subset(cleaned_data, select = -c(...1, prof))


#### Save data ####
write_csv(cleaned_data, "inputs/data/cleaned_data.csv")

