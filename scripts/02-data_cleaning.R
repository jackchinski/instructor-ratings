#### Preamble ####
# Purpose: Cleans.... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


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

