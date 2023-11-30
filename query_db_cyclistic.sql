-- Merge data
CREATE TABLE divvy_tripdata_q3 AS
SELECT * FROM divvy_tripdata_202309
UNION ALL
SELECT * FROM divvy_tripdata_202308
UNION ALL
SELECT * FROM divvy_tripdata_202307;

SELECT * FROM divvy_tripdata_q3;

-- Clean data
DELETE FROM divvy_tripdata_q3 
WHERE ride_id IS NULL 
OR rideable_type IS NULL 
OR started_at IS NULL 
OR ended_at IS NULL
OR start_station_name IS NULL
OR start_station_id IS NULL
OR end_station_name IS NULL
OR end_station_id IS NULL
OR start_lat IS NULL
OR start_lng IS NULL
OR end_lat IS NULL
OR end_lng IS NULL
OR member_casual IS NULL;

-- Update new day_of_week column
UPDATE divvy_tripdata_q3
SET day_of_week = CASE
    WHEN day_of_week = 1 THEN 'Monday'
    WHEN day_of_week = 2 THEN 'Tuesday'
    WHEN day_of_week = 3 THEN 'Wednesday'
    WHEN day_of_week = 4 THEN 'Thursday'
    WHEN day_of_week = 5 THEN 'Friday'
    WHEN day_of_week = 6 THEN 'Saturday'
    ELSE 'Sunday'
END;

-- Export data for future analysis