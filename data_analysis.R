# load csv
weather_features <- read.csv("weather_features.csv")

# get all rows where city_name is == Madrid
Madrid_subset <- weather_features[grep("Madrid", weather_features$city_name), ]
Valencia_subset <- weather_features[grep("Valencia", weather_features$city_name), ]
Bilbao_subset <- weather_features[grep("Bilbao", weather_features$city_name), ]

# create a data frame where dt_ido_Madrid, temp_Madrid etc are the columns
cities_df <- data.frame (
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
  weather_icon_Madrid = Madrid_subset$weather_icon
  # for Valencia it would be like
  # dt_iso_Valencia = Valencia_subset$dt_iso
  # temp_Valencia = Valencia_subset$temp
)

head(cities_df)
