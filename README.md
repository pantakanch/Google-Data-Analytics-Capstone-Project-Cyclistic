# Google-Data-Analytics-Capstone-Project-Cyclistic

# Introduction
This document presents my capstone project for the Google Data Analytics Professional Certificate. The final course presentation will summarize and present the key learnings from the course. Analyzing a case study from Cyclistic, a bike-share company in Chicago, will demonstrate the application of the six-phase data analysis approach (Ask, Prepare, Process, Analyze, Share, Act) to uncover valuable insights.

# 1. Ask
The following three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

# 2. Prepare
I utilize Cyclistic's historical trip data to analyze and identify trends. By I have chosen data from the 7th to the 9th month for analysis.
[Download the Cyclistic trip data](https://divvy-tripdata.s3.amazonaws.com/index.html). (Note: The data has been made available by Motivate International Inc. under this license).

# 3. Process
**Data Cleaning & Wranging**

#### Excel
- Removed duplicates
- Created a column named "ride_length" calculated using the formula "started_at - ended_at" and formatted it as HH:MM:SS
- Created a column named "day_of_week" using the "WEEKDAY" function to return the day of the week from the "started_at" column. The result is an integer ranging from 1 (Monday) to 7 (Sunday)

#### SQL
- Merged all datasets into one table
- Removed NULL values
- Updated the "day_of_week" column from 1-7 to Monday-Sunday

### R
- Changed column names for better readability
- Created columns named "month" and "week" by extracting data from the "started_at" column

# 4. Analyze
#### R
I used RStudio to conduct descriptive analysis to answer the following questions:
- Total rides per rider type
- Total Rides per Bike type per rider type
- Average ride length rider type
- Total rides by month per rider type
- Total rides by week per rider type
- Average rides by day of week per rider type
- Most popular start station
- Most popular end station

In addition, I created some visualizations in RStudio, including:
- Total rides per rider type

![Rplot](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/78c418ad-8336-4c2e-9936-347cd49afc44)

- Total Rides per Bike type

![Rplot01](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/611e10ba-33fc-4ae0-ae0b-750ee2dac58b)

- Total rides by week per rider type

![Rplot02](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/bd298115-6733-4dcc-9942-22bb2559b0bb)

- Average rides by day of week
- 
![Rplot03](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/b3fbdda7-9a12-4f42-96e5-c91ce73b1afd)

# 5. Share
After analyzing the data, I created a dashboard in Power BI to share insights with stakeholders.

![Screenshot 2023-11-30 170245](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/c52dec0f-6c90-4364-a291-edd5487146eb)

#### Summary Insight
- There are more annual members than casual riders.
- The average ride length for casual riders is higher than for members.
- Members prefer to use classic and electric bikes.
- The highest number of members use the service during weekdays, while casual riders use it more frequently on weekends.
- The top start station for members is Clark St & Elm St.
- The top start station for casual riders is Streeter Dr & Grand Ave.

# 6. Act
