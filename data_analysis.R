weather_features <- read.csv("weather_features.csv")

dt_iso <- weather_features["dt_iso"]
head("dt_iso")

Madrid_subset <- weather_features[grep("Madrid", weather_features$city_name), ]
# head(Madrid_subset$temp)

Valencia_subset <- weather_features[grep("Valencia", weather_features$city_name), ]
# head(Valencia_subset$temp)

Bilbao_subset <- weather_features[grep("Bilbao", weather_features$city_name), ]
# head(Bilbao_subset$temp)


cities_df <- data.frame (
  temp_Madrid = Madrid_subset$temp,
  temp_Valencia = Valencia_subset$temp,
  temp_Bilbao = Bilbao_subset$temp
  # temp_min_Madrid = Madrid_subset$temp_min,
  # pressure_Madrid = Madrid_subset$temp_max
)

head(cities_df)
