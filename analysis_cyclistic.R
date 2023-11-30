library(tidyverse)
library(ggplot2)
library(readr)
library(chron)

## Import CSV file
data_q3 <- read_csv("divvy_tripdata_q3.csv")

---------------
## Data Wrangling
---------------
## Inspect data
tibble(data_q3)

## Change column name
colnames(data_q3) <- c("ride_id",
                       "bike_type",
                       "started_at",
                       "ended_at",
                       "start_station_name",
                       "start_station_id",
                       "end_station_name",
                       "end_station_id",
                       "start_lat",
                       "start_lng",
                       "end_lat",
                       "end_lng",
                       "rider_type",
                       "ride_length",
                       "day_of_week")

## Create month column
data_q3$month <- month(data_q3$started_at)

## Create week column
data_q3$week <- week(data_q3$started_at)

---------------
## Analyze data
---------------
## 1. Total rides per rider type
data_q3 %>%
  group_by(rider_type) %>%
  summarise(total = n())

## 2. Rides per Bike type per rider type
data_q3 %>%
  group_by(bike_type, rider_type) %>%
  summarise(n_bike = n())

## 3. Average ride length per rider type
data_q3 %>%
  group_by(rider_type) %>%
  summarise(mean_ride_length = mean(times(ride_length)))

## 4. Total rides by month per rider type
data_q3 %>% 
  group_by(month, rider_type) %>% 
  summarise(n_ride = n())

## 5. Total rides by week per rider type
data_q3 %>% 
  group_by(week, rider_type) %>% 
  summarise(n_ride = n())

## 6. Average rides by day of week per rider type
data_q3 %>% 
  group_by(day_of_week, rider_type) %>% 
  summarise(avg_ride = mean(n()))

## 7. Most popular start station
data_q3 %>%
  group_by(start_station_name) %>%
  summarise(n_station = n()) %>%
  arrange(desc(n_station))

## 8. Most popular end station
data_q3 %>%
  group_by(end_station_name) %>%
  summarise(n_station = n()) %>%
  arrange(desc(n_station))

---------------
## Data Visualization
---------------
## Total rides
n_rides <- data_q3 %>%
  group_by(rider_type) %>%
  summarise(total = n())

all_rides <- sum(n_rides$total)

n_rides <- data_q3 %>%
  group_by(rider_type) %>%
  summarise(total = n(),
            percent = total/all_rides * 100)

ggplot(n_rides, 
  aes(x = "", y = percent, fill = rider_type)) +
  geom_bar(stat = "identity") +
  coord_polar("y") +
  geom_text(
    aes(label = scales::percent(total / sum(total))),
    position = position_stack(vjust = 0.5)
  ) +
  scale_fill_brewer(palette="Blues") +
  ggtitle("Total Rides") +
  theme_void()

## Rides per Bike type
n_bike_type <- data_q3 %>%
  group_by(bike_type) %>%
  summarise(n_bike = n())

ggplot(n_bike_type, 
  aes(x = reorder(bike_type, n_bike), y = n_bike)) +
  coord_flip() +
  geom_col(fill = "steelblue4") +
  ggtitle("Rides per Bike type") +
  labs(x = "Type", y = "Number of rides") +
  theme_minimal()

## Number of rides by week
n_week_ride <- data_q3 %>%
  group_by(week, rider_type) %>%
  summarise(n_ride = n())

ggplot(n_week_ride, 
       aes(x = week, y = n_ride, color = rider_type)) +
  geom_line(size = 1) +
  ggtitle("Number of rides by week") +
  labs(x = "Week", y = "Number of Rides") +
  scale_color_manual(values = c("steelblue4", "gold1")) +
  theme_minimal()

## Average rides by day of week
avg_day_ride <- data_q3 %>% 
  group_by(day_of_week) %>% 
  summarise(avg_ride = mean(n()))

avg_day_ride$day_of_week <- 
  factor(avg_day_ride$day_of_week, 
         levels = c("Monday", 
                    "Tuesday", 
                    "Wednesday", 
                    "Thursday", 
                    "Friday", 
                    "Saturday", 
                    "Sunday"))

avg_day_ride <- avg_day_ride[order(avg_day_ride$day_of_week), ]

ggplot(avg_day_ride, 
       aes(x = day_of_week, y = avg_ride)) +
  geom_col(fill = "steelblue4") +
  geom_text(aes(label = round(avg_ride, 0)), stat = "identity", vjust = -1) +
  ggtitle("Average Rides by Day") +
  theme_minimal()

---------------
## Export file to create dashboard
---------------
write.csv(data_q3, "data_for_dashboard.csv")

  