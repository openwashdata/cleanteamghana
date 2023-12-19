# description -------------------------------------------------------------

# R script to process uploaded raw data into a tidy dataframe

# load packages -----------------------------------------------------------

library(readr)
library(tidyverse)
library(janitor)
library(dplyr)

# read data ---------------------------------------------------------------

dataset <- read_delim("data-raw/CTG_data_anonymized.csv", delim = ";")

# tidy data ---------------------------------------------------------------

cleanteamghana <- dataset |>
  clean_names() |>
  rename(
    female_less_5 = "female_5_years",
    female_from_5_to_18 = "female_5_1_8_years",
    female_more_18 = "female_1_8_years",
    male_less_5 = "male_5_years",
    male_from_5_to_18 = "male_5_1_8_years",
    male_more_18 = "male_1_8_years",
    sex_respondent = "sex_mainrespondent",
    functioning_toilet_is_ctg = "functioning_toilet_isctg",
    daily_toilet_usage = "numeber_of_daily_toilet_usage",
    floor_material = "main_material_of_floor",
    roof_material = "main_material_of_roof",
    wall_material = "main_material_of_wall") |>
  select(uuid, submission_time, area,  district, community, cleanliness_of_neighborhood, safety_of_neighborhood, development_priority_of_neighborhood, age_of_respondent, sex_respondent,
         marital_status, highest_level_of_education, employment_type, house_ownership, landlord_residence, female_less_5, female_from_5_to_18,
         female_more_18, male_less_5, male_from_5_to_18, male_more_18, number_households_sharing,	number_of_households,	number_of_rooms, daily_toilet_usage,
          electricity_situation, fuel_used_for_cooking, location_of_water_source, able_to_observe_toilet, cant_afford_toilet, functioning_toilet,
         functioning_toilet_is_ctg, handwashing_facility, floor_material, roof_material, wall_material, pan_material, pit_lining, mechanical_emptying, primary_solidwaste_collection,
         presence_of_drain, presence_of_paved_road, presence_of_street_lights, everything()) |> #order categories
  select(-version,-id,-index, -customer_available_and_over_18, -customer_willing_to_participate, -deviceid, -displaytenant, -image_of_ct_gtoilet, -image_of_house,
         -selectrandomperson,-simserial, -wtp_carrying,-wtp_carrying_10,	-wtp_carrying_15,-wtp_carrying_5,-wtp_enclosure,-wtp_enclosure_10,-wtp_enclosure_15,
         -wtp_enclosure_5,-wtp_frequency,	-wtp_frequency_10,-wtp_frequency_15,-wtp_frequency_5) |> #irrelevant data
  select(-validation_status, -community_other, -cost_per_other, -cost_per_month, -cost_per_month_endline, -cost_per_week,
         -ctg_information_family, -ctg_information_friend, -ctg_information_neighbour, -ctg_information_other, -ctg_information_other_specify, -ctg_information_salesagent,
         -ctg_information_spouse, -ctg_recommendation_family, -ctg_recommendation_friend, -ctg_recommendation_neighbour, -ctg_recommendation_other, -ctg_information_other_specify, -ctg_information_salesagent,
         -ctg_recommendation_none, -ctg_recommendation_other_specify, -type_of_toilet_other, -type_of_toilet_other_001, -why_not_use_a_toilet_other) |> #empty (or almost) column
  select(-cant_access_money_for_toilet, -dce1, -dce10, -dce11, -dce12, -dce13, -dce14, -dce15, -dce16, -dce2, -dce3, -dce4, -dce5, -dce6, -dce7, -dce8, -dce9, -perception_about_neighborhood,
         -sanqol_cost_young, -sanqol_assault_young, -sanqol_cleanliness_young, -sanqol_convenience_young, -sanqol_disgust_young, -sanqol_health_young, -sanqol_privacy_young,
         -sanqol_proud_young, -sanqol_safety_young, -sanqol_shame_young, -sanqol_smell_young, -time, -vas1, -vas2, -vas3, -vas4, -exclusion_from_toilet_usage, -exclusion_from_toilet_usage_reason,
         -howmanyoppositesex, -odour_control_agents_other_baseline,	-odour_control_agents_other_endline,	-odour_control_agents_other_specify, -pit_lining_other,
         -random_wtp_1, -random_wtp_2, -random_wtp_3, -type_of_toilet_001) |> #not clear what the data is without further context
  select(-gps_location, -gps_location_alt, -gps_location_lat, -gps_location_long, -gps_location_precision, -household_id, -interviewer_name, -phonenumber,
         -willing_to_participate_young, -young_respondent_available,-young_respondent_available_female,-young_respondent_available_male,
         -age_of_young_respondent, -sex_youngrespondent) |>  #private data
  select(-ctg_issues_excessive_smell_when_open,	-ctg_issues_full,	-ctg_issues_leaking,	-ctg_issues_none,	-ctg_issues_smells_when_closed,
         -smell_reduction_system_none,-smell_reduction_system_other,	-smell_reduction_system_other_specify,	-smell_reduction_system_pipe,	-smell_reduction_system_simplecover,
         -smell_reduction_system_waterseal,	-smell_reduction_system_window_or_vent, -toilet_use_payment_option_other, -date, -survey_start_time,
         -odour_control_agents_ash_118, -odour_control_agents_ash_125, -odour_control_agents_chemicals) |> #data already present in other column
  mutate(toilet_use_payment_option = ifelse(toilet_use_payment_option == "Other", "Per Desludge", toilet_use_payment_option),
         ever_unable_to_use_ctg = case_when(
           ever_unable_to_use_ctg %in% c("Yes", "No") ~ ever_unable_to_use_ctg,
           TRUE ~ NA_character_
         )) #-odour_control_agents_ash and -odour_control_agents_sawdust

## code to prepare a tidy, analysis-ready dataset goes here

# write data --------------------------------------------------------------

usethis::use_data(cleanteamghana, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata")) #exports dataset in R
write_csv(cleanteamghana, here::here("inst/extdata/cleanteamghana.csv")) #exports dataset in csv and excel
openxlsx::write.xlsx(cleanteamghana,"inst/extdata/cleanteamghana.xlsx")
