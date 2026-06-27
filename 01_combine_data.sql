-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Step 1: Combine all 12 monthly tables into one full-year table
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================

CREATE TABLE cyclistic_bike_share.full_year_data AS

SELECT * FROM cyclistic_bike_share.tripdata_202501
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202502
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202503
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202504
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202505
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202506
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202507
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202508
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202509
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202510
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202511
UNION ALL
SELECT * FROM cyclistic_bike_share.tripdata_202512;

-- Result: One unified table with 5.5+ million rows covering Jan–Dec 2025
-- Note: Files for June–October exceeded BigQuery's 100MB upload limit
--       and were split using Mac Terminal commands before being uploaded
--       and appended here.
