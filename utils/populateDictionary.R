# Load your dataset
data(cleanteamghana)

# Get column names and data types
col_names <- colnames(cleanteamghana)
data_types <- unlist(sapply(cleanteamghana, class))
data_types <- ifelse(data_types == "numeric", "integer", data_types)
data_types <- ifelse(data_types == "POSIXct", "date", data_types)
data_types <- data_types[data_types != "POSIXt"]

# Create the data frame for the dictionary
dictionary <- data.frame(
  directory = rep("data", length(col_names)),
  file_name = rep("cleanteamghana.rda", length(col_names)),
  variable_name = col_names,
  variable_type = data_types,
  description = rep("", length(col_names))
)

# Write the dictionary to a CSV file
write.csv(dictionary, file = "./data-raw/dictionary.csv", row.names = FALSE)
