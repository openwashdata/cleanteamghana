# description -------------------------------------------------------------

# R script to process uploaded raw data into a tidy dataframe

# load packages -----------------------------------------------------------

library(readr)
library(tidyverse)

# read data ---------------------------------------------------------------

dataset <- read_csv("data-raw/CTG_data_anonymized.csv")

# tidy data ---------------------------------------------------------------

cleanteamghana <- dataset |>
  select(
    age = age_of_respondent,
    area = area,
    toilet = able_to_observe_toilet,
    money_toilet = cant_afford_toilet
  )
## code to prepare a tidy, analysis-ready dataset goes here

# write data --------------------------------------------------------------

usethis::use_data(cleanteamghana, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata")) #exports dataset in R
write_csv(cleanteamghana, here::here("inst/extdata/cleanteamghana.csv")) #exports dataset in csv and excel
openxlsx::write.xlsx(cleanteamghana,"inst/extdata/cleanteamghana.xlsx")
