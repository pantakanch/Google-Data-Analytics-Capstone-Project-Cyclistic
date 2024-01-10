# Google Data Analytics Capstone Project Cyclistic

# Introduction
This document presents my capstone project for the Google Data Analytics Professional Certificate. The final course presentation will summarize and present the key learnings from the course. Analyzing a case study from Cyclistic, a bike-share company in Chicago, will demonstrate the application of the six-phase data analysis approach (Ask, Prepare, Process, Analyze, Share, Act) to uncover valuable insights.

# 1. Ask
Key Questions:
- How do casual riders and members differ in their usage patterns?
- What are the peak usage times for both casual riders and members?
- How can Cyclistic use data to increase the number of annual members?

# 2. Prepare
I utilized Cyclistic's historical trip data to analyze and identify trends, choosing data from the 7th to the 9th month of 2023 for analysis.
[Download the Cyclistic trip data](https://divvy-tripdata.s3.amazonaws.com/index.html). (Note: The data has been made available by Motivate International Inc. under this license).

# 3. Process
**Data Cleaning & Wranging**

**Excel**
- Removed duplicates
- Created a column named "ride_length" calculated using the formula "started_at - ended_at" and formatted it as HH:MM:SS
- Created a column named "day_of_week" using the "WEEKDAY" function to return the day of the week from the "started_at" column. The result is an integer ranging from 1 (Monday) to 7 (Sunday)

**SQL**
- Import CSV file
- Merged all datasets into one table
- Removed NULL values
- Updated the "day_of_week" column from 1-7 to Monday-Sunday
- Export "divvy_tripdata_q3" as CSV file

**R**
- Import divvy_tripdata_q3.csv
- Changed column names for better readability
- Created columns named "month" and "week" by extracting data from the "started_at" column

# 4. Analyze
**R**

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

![Rplot03](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/b3fbdda7-9a12-4f42-96e5-c91ce73b1afd)

# 5. Share
After analyzing the data, I created a dashboard in Power BI to share insights with stakeholders.

![Screenshot 2023-12-01 115150](https://github.com/pantakanch/Google-Data-Analytics-Capstone-Project-Cyclistic/assets/113978334/a985ecf5-3a01-4a7a-ba20-0eaa0d1ad4c6)
[Dashboard Link](https://drive.google.com/file/d/1Q0pt9yEZXX0a08wdhfr3Ah5qgOUoIMmh/view?usp=sharing)

**Summary Insight**
- The number of annual members is greater than the number of casual riders, accounting for 59%, compared to 41%.
- The number of rides per week for annual members is approximately 2 times greater than that of casual riders.
- Casual riders have a higher average ride length than annual members.
- Annual members prefer classic and electric bikes.
- Annual members use the service most frequently during weekdays, while casual riders prefer weekends.
- The top starting station for members is Clark Street & Elm Street, located in the affluent Gold Coast neighborhood of Chicago. Additionally, several CTA bus stops and a Red Line subway station are conveniently located at the intersection.
- The top starting station for casual riders is Streeter Drive & Grand Avenue, conveniently located near Navy Pier, a popular Chicago tourist destination. Furthermore, it is close to several bus stops and a Metra station, making it an ideal spot for exploring the city.

# 6. Act
Based on the insights derived from my analysis, here are the top 5 recommendations for Cyclistic:

**1. Promotional Strategies**

**For Annual Members:** Launch targeted promotions, discounts, and exclusive offers specifically for annual members during weekdays. This can further incentivize their high usage and enhance member loyalty.

**For Casual Riders:**  Launch weekend-specific promotions, discounts, or events to attract more casual riders during their preferred time of use. This can help increase overall ridership and potentially convert casual riders into members.

**2. Membership Conversion Campaign**
Develop a marketing campaign aimed at converting casual riders into annual members. Highlight the benefits of membership, including cost savings and weekday convenience.

**3. Collaborations and Partnerships**
Explore partnerships with local businesses in the Gold Coast neighborhood to provide exclusive perks for Cyclistic annual members. This could enhance the overall membership experience and promote brand loyalty.

**4. Bike Type Optimization**
Ensure that popular stations are well-equipped with classic and electric bikes, as these are preferred by annual members. Regularly assess bike popularity and adjust the fleet to meet member preferences.

**5. Expand Station Network**
Assess the potential for additional stations in high-traffic areas or popular tourist destinations, especially on weekends. This could attract more casual riders and contribute to overall business growth.
