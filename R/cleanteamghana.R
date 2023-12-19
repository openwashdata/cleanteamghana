#' Clean Team Ghana
#'
#' The Clean Team Ghana dataset captures extensive information on various aspects of container-based sanitation in Ghana.
#' It includes data on household demographics, sanitation facilities, cleanliness perceptions, usage patterns, satisfaction levels, concerns,
#' and factors influencing the adoption of Clean Team Ghana's container-based sanitation services. This dataset aims to evaluate the effectiveness,
#' acceptance, and challenges associated with container-based sanitation practices in Ghanaian communities.
#'
#' @format A tibble with 583 rows and 127 variables:
#' \describe{
#'   \item{uuid}{Unique identifier for each record}
#'   \item{submission_time}{Timestamp of the survey submission}
#'   \item{area}{Area of the observation}
#'   \item{district}{District of the observation}
#'   \item{community}{Community of the observation}
#'   \item{cleanliness_of_neighborhood}{Perceived cleanliness of the neighborhood}
#'   \item{safety_of_neighborhood}{Perceived safety of the neighborhood}
#'   \item{development_priority_of_neighborhood}{Development priority of the neighborhood}
#'   \item{age_of_respondent}{Age of the respondent}
#'   \item{sex_respondent}{Gender of the respondent}
#'   \item{marital_status}{Marital status of the respondent}
#'   \item{highest_level_of_education}{Highest level of education completed by the respondent}
#'   \item{employment_type}{Type of employment of the respondent}
#'   \item{house_ownership}{Ownership status of the house}
#'   \item{landlord_residence}{Whether the landlord resides in the same location}
#'   \item{female_less_5}{Number of females under 5 years old living in the house}
#'   \item{female_from_5_to_18}{Number of females between 5 and 18 years old living in the house}
#'   \item{female_more_18}{Number of females over 18 years old living in the house}
#'   \item{male_less_5}{Number of males under 5 years old living in the house}
#'   \item{male_from_5_to_18}{Number of males between 5 and 18 years old living in the house}
#'   \item{male_more_18}{Number of males over 18 years old living in the house}
#'   \item{number_households_sharing}{Number of households sharing a facility}
#'   \item{number_of_households}{Total number of households in the house/area?}
#'   \item{number_of_rooms}{Total number of rooms in the house}
#'   \item{daily_toilet_usage}{Frequency of toilet usage per day}
#'   \item{electricity_situation}{Electricity situation in the house}
#'   \item{fuel_used_for_cooking}{Type of fuel used for cooking}
#'   \item{location_of_water_source}{Location of water source}
#'   \item{able_to_observe_toilet}{Ability to observe a toilet in the area by the interviewer}
#'   \item{cant_afford_toilet}{Inability to afford a toilet by inhabitants of the house}
#'   \item{functioning_toilet}{Presence of a functioning toilet}
#'   \item{functioning_toilet_is_ctg}{The functioning toilet is from Clean Team Ghana?}
#'   \item{handwashing_facility}{Availability of a handwashing facility}
#'   \item{floor_material}{Material used for flooring}
#'   \item{roof_material}{Material used for roofing}
#'   \item{wall_material}{Material used for walls}
#'   \item{pan_material}{Material used for toilet pans}
#'   \item{pit_lining}{Presence of pit lining}
#'   \item{mechanical_emptying}{Mechanical emptying of the pit}
#'   \item{primary_solidwaste_collection}{Primary method of solid waste collection}
#'   \item{presence_of_drain}{Presence of a drain in the toilet}
#'   \item{presence_of_paved_road}{Presence of paved roads near the toilet}
#'   \item{presence_of_street_lights}{Presence of street lights near the toilet}
#'   \item{cleaned_toilet}{Cleanliness of the toilel}
#'   \item{cleanliness_of_pan}{Cleanliness of the toilet pan}
#'   \item{cleanliness_of_slab}{Cleanliness of the toilet slab}
#'   \item{concerns_about_using_ctg_toilet}{Whether individuals have concerns about using the Clean Team Ghana (CTG) toilet}
#'   \item{concerns_about_using_ctg_toilet_specify}{Respondents can specify their concerns about using the CTG toilet if they have any}
#'   \item{container_replaced_freq_ctg}{Frequency of container replacement for the CTG toilet}
#'   \item{cost_per_use}{Cost incurred per use of the CTG toilet}
#'   \item{ctg_cleanliness}{Perceived cleanliness of the CTG toilet}
#'   \item{ctg_information_source}{Source from which individuals obtained information about the CTG toilet}
#'   \item{ctg_issues}{Any issues or problems related to the CTG toilet}
#'   \item{ctg_recommendation}{Whether individuals would recommend the CTG toilet to others}
#'   \item{door_lockable_inside}{Whether the CTG toilet has a lockable door from the inside}
#'   \item{door_lockable_outside}{Whether the CTG toilet has a lockable door from the outside}
#'   \item{ever_unable_to_use_ctg}{Whether individuals have ever been unable to use the CTG toilet}
#'   \item{ever_unable_to_use_ctg_specify}{Respondents can specify reasons if they have ever been unable to use the CTG toilet}
#'   \item{fear_of_being_removed}{Whether individuals fear the CTG toilet of being removed}
#'   \item{how_likely_to_recommend_clean_team}{Likelihood of individuals recommending Clean Team Ghana's services to others}
#'   \item{is_ctg_available}{Availability of the CTG toilet in this particular area}
#'   \item{knowledge_of_toilet_sharing}{Individuals' awareness or understanding of sharing toilets among multiple users}
#'   \item{management_of_children_feces}{Need for managing children's feces}
#'   \item{odour_control_agents_baseline}{Agents or methods used for controlling odors at the baseline or initial stage}
#'   \item{odour_control_agents_endline}{Agents or methods used for controlling odors at the endpoint or final stage}
#'   \item{odour_control_baseline}{Effectiveness or measures taken to control odors at the baseline or initial stage}
#'   \item{odour_control_endline}{Effectiveness or measures taken to control odors at the endpoint or final stage}
#'   \item{people_using_ctg}{Number of people using Clean Team Ghana's services or toilets in this particular area}
#'   \item{rent_paid}{Amount of rent paid by CTG?}
#'   \item{sanqol_assault}{Perceptions or experiences related to assault or safety concerns at the sanitation facility}
#'   \item{sanqol_cleanliness}{Perceptions or evaluations of the cleanliness of the sanitation facility.}
#'   \item{sanqol_convenience}{Level of convenience provided by the sanitation facility}
#'   \item{sanqol_cost}{Perceptions or satisfaction related to the cost of using the sanitation facility}
#'   \item{sanqol_disgust}{Feelings of disgust or repulsion associated with the sanitation facility}
#'   \item{sanqol_health}{Perceptions or concerns about health-related aspects associated with the sanitation facility}
#'   \item{sanqol_privacy}{Perceptions or satisfaction levels regarding privacy at the sanitation facility}
#'   \item{sanqol_proud}{Feelings of pride or satisfaction associated with using the sanitation facility}
#'   \item{sanqol_safety}{Perceptions or feelings of safety related to the sanitation facility}
#'   \item{sanqol_shame}{Feelings of shame associated with using the sanitation facility}
#'   \item{sanqol_smell}{Perceptions or experiences related to unpleasant smells at the sanitation facility}
#'   \item{satisfaction_avoiding_unpleasant_odour}{Satisfaction levels regarding avoiding unpleasant odors while using the facility}
#'   \item{satisfaction_avoiding_unpleasant_odour_not_in_use}{Satisfaction levels regarding avoiding unpleasant odors when the facility is not in use}
#'   \item{satisfaction_combine_duities_and_using_toilet}{Satisfaction levels while combining duties and using the toilet}
#'   \item{satisfaction_manage_menstrual_hygiene}{Satisfaction levels regarding the management of menstrual hygiene at the facility}
#'   \item{satisfaction_towards_cost_of_latrine_usage}{Satisfaction levels related to the cost of using the latrine or sanitation facility}
#'   \item{satisfaction_towards_ease_to_access}{Satisfaction levels related to the ease of access to the sanitation facility}
#'   \item{satisfaction_towards_ease_to_use}{Satisfaction levels related to the ease of using the sanitation facility}
#'   \item{satisfaction_towards_privacy_of_toilet_use}{Satisfaction levels related to the privacy offered during toilet use}
#'   \item{satisfaction_towards_toilet_cleanliness}{Satisfaction levels related to the cleanliness of the toilet}
#'   \item{satisfaction_towards_toilet_uncomfortabity}{Discomfort experienced while using the toilet}
#'   \item{sharing_of_toilet_baseline}{Sharing pattern or practices related to using the toilet at the baseline or initial stage}
#'   \item{sharing_of_toilet_endline}{Sharing pattern or practices related to using the toilet at the endpoint or final stage}
#'   \item{slab_material}{Material used for constructing the slab of the sanitation facility}
#'   \item{slab_material_other}{Additional information on the material used for constructing the slab if it's specified as 'other'}
#'   \item{smell_reduction_system}{Method implemented within the toilet facility to reduce or eliminate unpleasant odors}
#'   \item{soap_for_handwashing}{Availability of soap provided specifically for handwashing within the toilet facility}
#'   \item{source_of_water_for_drinking}{Available water source within the toilet facility intended for drinking purposes}
#'   \item{source_of_water_for_other_purposes}{Water source within the toilet facility used for non-drinking purposes such as cleaning, flushing, or other sanitary needs}
#'   \item{time_to_access_toilet}{Time taken to reach the toilet from a specific point, likely measured in minutes.}
#'   \item{time_to_get_water}{Time required to access water, likely measured in minutes}
#'   \item{toilet_door}{Presence of toilet door in the toilet facility}
#'   \item{toilet_location_baseline}{Initial or baseline location of the toilet facility}
#'   \item{toilet_location_ctg}{Location of the Clean Team Ghana toilet facility}
#'   \item{toilet_on_compound_cant_use}{Presence of a toilet within a compound that is unusable for some reason}
#'   \item{toilet_public_usage_baseline}{Usage pattern or availability of the toilet facility at the baseline}
#'   \item{toilet_public_usage_endline}{Usage pattern or availability of the toilet facility at the endpoint or final stage}
#'   \item{toilet_roof}{Presence of toilet roof in the toilet facility}
#'   \item{toilet_scrubbedmopped_frequency}{Frequency of cleaning activities like scrubbing and mopping of the toilet}
#'   \item{toilet_use_payment_option}{Payment for using the toilet}
#'   \item{toilet_walls}{Presence of toilet wall in the toilet facility}
#'   \item{type_of_toilet}{Type of toilet facility (e.g., pit latrine, flush toilet)}
#'   \item{urinate_or_defecate_at_night}{Behavior related to urination or defecation during the night}
#'   \item{urinate_or_defecate_at_night_use_ctg}{Nighttime urination or defecation patterns in the Clean Team Ghana toilet}
#'   \item{use_non_ctg_toilet}{Usage of a non-Clean Team Ghana provided toilet facility}
#'   \item{wait_for_replacement_ctg}{If the residents waiting for a replacement of the Clean Team Ghana toilet}
#'   \item{water_for_handwashing}{Availability of water for handwashing}
#'   \item{why_not_observed}{Reasons why CTG toilet wasn't observed}
#'   \item{why_not_use_a_toilet}{Reasons for not using a toilet in general}
#'   \item{why_not_use_household_toilets}{Reasons for not using a household toilet}
#'   \item{why_not_use_household_toilets_other}{Additional reasons for not using household toilets if specified as 'other'}
#'   \item{years_living_in_current_house}{Duration of time spent living in the current household}
#'   \item{household_size}{Total number of individuals living in a household}
#'   \item{adults}{Count of adults in the household}
#'   \item{kids}{Count of kids in the household}
#'   \item{sanqol_rawindex}{Raw numerical index representing the overall satisfaction in sanitation quality of life}
#'   \item{sanqol_rawscore}{Raw numerical score representing the overall satisfaction in sanitation quality of life}
#'   \item{cost_per_month_public_baseline}{Cost per month related to public toilet usage at the baseline stage}
#' }
"cleanteamghana"
