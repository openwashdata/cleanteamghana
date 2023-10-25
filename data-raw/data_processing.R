# description -------------------------------------------------------------

# R script to process uploaded raw data into a tidy dataframe

# load packages -----------------------------------------------------------

library(readr)

# read data ---------------------------------------------------------------

dataset <- read_csv("data-raw/CTG_data_anonymized.csv")

# tidy data ---------------------------------------------------------------

## code to prepare a tidy, analysis-ready dataset goes here

# write data --------------------------------------------------------------

usethis::use_data(dataset, overwrite = TRUE)

