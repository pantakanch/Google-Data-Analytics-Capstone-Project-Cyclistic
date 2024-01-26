# Google Data Analytics Capstone Project: Cyclistic

## Introduction

This document outlines my capstone project for the Google Data Analytics Professional Certificate. The project focuses on applying the six-phase data analysis approach (Ask, Prepare, Process, Analyze, Share, Act) to Cyclistic, a Chicago-based bike-share company. The objective is to uncover insights from historical trip data and answer key questions about user behavior.

## 1. Ask

Key Questions:

- How do casual riders and members differ in usage patterns?
- What are the peak usage times for both casual riders and members?
- How can Cyclistic leverage data to increase annual memberships?

## 2. Prepare

I utilized Cyclistic's historical trip data from the 7th to the 9th month of 2023 for analysis. You can [download the Cyclistic trip data here](https://divvy-tripdata.s3.amazonaws.com/index.html). (Note: The data is available under this license from Motivate International Inc.).

## 3. Process

**Data Cleaning & Wrangling**

- **Excel:**
  - Removed duplicates.
  - Created "ride_length" using the formula "started_at - ended_at" and formatted it as HH:MM:SS.
  - Generated "day_of_week" using the "WEEKDAY" function to represent days as integers (1 to 7).

- **SQL:**
  - Imported CSV file.
  - Merged datasets into one table.
  - Removed NULL values.
  - Updated "day_of_week" from 1-7 to Monday-Sunday.
  - Exported "divvy_tripdata_q3" as CSV.

- **R:**
  - Imported divvy_tripdata_q3.csv.
  - Renamed columns for readability.
  - Created "month" and "week" columns from the "started_at" data.

## 4. Analyze

**RStudio Analysis:**

I conducted descriptive analysis to answer questions such as:
- Total rides per rider type.
- Total rides per bike type per rider type.
- Average ride length per rider type.
- Total rides by month per rider type.
- Total rides by week per rider type.
- Average rides by day of the week per rider type.
- Most popular start and end stations.

Visualizations were created in RStudio, including:
- Total rides per rider type

![Rplot](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/78c418ad-8336-4c2e-9936-347cd49afc44)

- Total rides per bike type

![Rplot01](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/611e10ba-33fc-4ae0-ae0b-750ee2dac58b)

- Total rides by week per rider type

![Rplot02](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/bd298115-6733-4dcc-9942-22bb2559b0bb)

- Average rides by day of the week

![Rplot03](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/b3fbdda7-9a12-4f42-96e5-c91ce73b1afd)

## 5. Share
![Screenshot 2023-12-01 115150](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/a985ecf5-3a01-4a7a-ba20-0eaa0d1ad4c6)
I created a Power BI dashboard to share insights with stakeholders. [View Dashboard](https://drive.google.com/file/d/1Q0pt9yEZXX0a08wdhfr3Ah5qgOUoIMmh/view?usp=sharing)

**Summary Insights:**
- The number of annual members is greater than the number of casual riders, accounting for 59%, compared to 41%.
- Both annual members and casual riders prefer classic bikes the most, followed by electric bikes.
- Members ride more during weekdays, while casual riders prefer weekends.
- Weekly rides for annual members are approximately twice as much as casual riders.
- Casual riders tend to have longer average ride lengths.
- The top starting station for members is Clark Street & Elm Street, located in the affluent Gold Coast neighborhood of Chicago. Additionally, several CTA bus stops and a Red Line subway station are conveniently located at the intersection.
- The top starting station for casual riders is Streeter Drive & Grand Avenue, conveniently located near Navy Pier, a popular Chicago tourist destination. Furthermore, it is close to several bus stops and a Metra station, making it an ideal spot for exploring the city.

## 6. Act

Based on insights, here are the top 5 recommendations for Cyclistic:

1. **Promotional Strategies:**
   - Launch targeted promotions, discounts, and exclusive offers specifically for annual members during weekdays. This can further incentivize their high usage and enhance member loyalty.
   - Launch weekend-specific promotions, discounts, or events to attract more casual riders during their preferred time of use. This can help increase overall ridership and potentially convert casual riders into members.

2. **Membership Conversion Campaign:**
   - Develop a marketing campaign aimed at converting casual riders into annual members. Highlight the benefits of membership, including cost savings and weekday convenience.

3. **Collaborations and Partnerships:**
   - Partner with local businesses in high-traffic areas to offer exclusive perks for annual members.

4. **Bike Type Optimization:**
   - Ensure popular stations are stocked with classic and electric bikes based on member preferences.

5. **Expand Station Network:**
   - Assess potential additional stations in high-traffic or tourist areas to attract more riders.
