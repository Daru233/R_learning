# load csv
weather_features <- read.csv("weather_features.csv")

# get all rows where city_name is == Madrid
Valencia_subset <- weather_features[grep("Valencia", weather_features$city_name), ]
# city rows are not the same shape, so only taking the 1st to the 35,000th row
Valencia_subset <- Valencia_subset[1:35000,]

Madrid_subset <- weather_features[grep("Madrid", weather_features$city_name), ]
Madrid_subset <- Madrid_subset[1:35000,]

Bilbao_subset <- weather_features[grep("Bilbao", weather_features$city_name), ]
Bilbao_subset <- Bilbao_subset[1:35000,]

Barcelona_subset <- weather_features[grep("Barcelona", weather_features$city_name), ]
Barcelona_subset <- Barcelona_subset[1:35000,]

Seville_subset <- weather_features[grep("Seville", weather_features$city_name), ]
Seville_subset <- Seville_subset[1:35000,]


cities_df <- data.frame (

  # Valencia
  dt_iso_Valencia = Valencia_subset$dt_iso,
  temp_Valencia = Valencia_subset$temp,
  temp_min_Valencia = Valencia_subset$temp_min,
  temp_max_Valencia = Valencia_subset$temp_max,
  pressure_Valencia = Valencia_subset$pressure,
  humidity_Valencia = Valencia_subset$humidity,
  wind_speed_Valencia= Valencia_subset$wind_speed,
  wind_deg_Valencia = Valencia_subset$wind_deg,
  rain_1h_Valencia = Valencia_subset$rain_1h,
  rain_3h_Valencia = Valencia_subset$rain_3h,
  snow_3h_Valencia = Valencia_subset$snow_3h,
  clouds_all_Valencia = Valencia_subset$clouds_all,
  weather_id_Valencia = Valencia_subset$weather_id,
  weather_main_Valencia = Valencia_subset$weather_main,
  weather_description_Valencia = Valencia_subset$weather_description,
  weather_icon_Valencia = Valencia_subset$weather_icon,

  # Madrid
  dt_iso_Madrid = Madrid_subset$dt_iso,
  temp_Madrid = Madrid_subset$temp,
  temp_min_Madrid = Madrid_subset$temp_min,
  temp_max_Madrid = Madrid_subset$temp_max,
  pressure_Madrid = Madrid_subset$pressure,
  humidity_Madrid = Madrid_subset$humidity,
  wind_speed_Madrid = Madrid_subset$wind_speed,
  wind_deg_Madrid = Madrid_subset$wind_deg,
  rain_1h_Madrid = Madrid_subset$rain_1h,
  rain_3h_Madrid = Madrid_subset$rain_3h,
  snow_3h_Madrid = Madrid_subset$snow_3h,
  clouds_all_Madrid = Madrid_subset$clouds_all,
  weather_id_Madrid = Madrid_subset$weather_id,
  weather_main_Madrid = Madrid_subset$weather_main,
  weather_description_Madrid = Madrid_subset$weather_description,
  weather_icon_Madrid = Madrid_subset$weather_icon,

  # Bilbao
  dt_iso_Bilbao = Bilbao_subset$dt_iso,
  temp_Bilbao = Bilbao_subset$temp,
  temp_min_Bilbao = Bilbao_subset$temp_min,
  temp_max_Bilbao = Bilbao_subset$temp_max,
  pressure_Bilbao = Bilbao_subset$pressure,
  humidity_Bilbao = Bilbao_subset$humidity,
  wind_speed_Bilbao = Bilbao_subset$wind_speed,
  wind_deg_Bilbao = Bilbao_subset$wind_deg,
  rain_1h_Bilbao = Bilbao_subset$rain_1h,
  rain_3h_Bilbao = Bilbao_subset$rain_3h,
  snow_3h_Bilbao = Bilbao_subset$snow_3h,
  clouds_all_Bilbao = Bilbao_subset$clouds_all,
  weather_id_Bilbao = Bilbao_subset$weather_id,
  weather_main_Bilbao = Bilbao_subset$weather_main,
  weather_description_Bilbao = Bilbao_subset$weather_description,
  weather_icon_Bilbao = Bilbao_subset$weather_icon,

  # Barcelona
  dt_iso_Barcelona = Barcelona_subset$dt_iso,
  dt_iso_Barcelona = Barcelona_subset$dt_iso,
  temp_Barcelona = Barcelona_subset$temp,
  temp_min_Barcelona = Barcelona_subset$temp_min,
  temp_max_Barcelona = Barcelona_subset$temp_max,
  pressure_Barcelona = Barcelona_subset$pressure,
  humidity_Barcelona = Barcelona_subset$humidity,
  wind_speed_Barcelona = Barcelona_subset$wind_speed,
  wind_deg_Barcelona = Barcelona_subset$wind_deg,
  rain_1h_Barcelona = Barcelona_subset$rain_1h,
  rain_3h_Barcelona = Barcelona_subset$rain_3h,
  snow_3h_Barcelona = Barcelona_subset$snow_3h,
  clouds_all_Barcelona = Barcelona_subset$clouds_all,
  weather_id_Barcelona = Barcelona_subset$weather_id,
  weather_main_Barcelona = Barcelona_subset$weather_main,
  weather_description_Barcelona = Barcelona_subset$weather_description,
  weather_icon_Barcelona = Barcelona_subset$weather_icon,

  # Seville
  dt_iso_Seville = Seville_subset$dt_iso,
  dt_iso_Seville = Seville_subset$dt_iso,
  dt_iso_Seville = Seville_subset$dt_iso,
  temp_Seville = Seville_subset$temp,
  temp_min_Seville = Seville_subset$temp_min,
  temp_max_Seville = Seville_subset$temp_max,
  pressure_Seville = Seville_subset$pressure,
  humidity_Seville = Seville_subset$humidity,
  wind_speed_Seville = Seville_subset$wind_speed,
  wind_deg_Seville = Seville_subset$wind_deg,
  rain_1h_Seville = Seville_subset$rain_1h,
  rain_3h_Seville = Seville_subset$rain_3h,
  snow_3h_Seville = Seville_subset$snow_3h,
  clouds_all_Seville = Seville_subset$clouds_all,
  weather_id_Seville = Seville_subset$weather_id,
  weather_main_Seville = Seville_subset$weather_main,
  weather_description_Seville = Seville_subset$weather_description,
  weather_icon_Seville = Seville_subset$weather_icon

)

head(cities_df)
tail(cities_df)