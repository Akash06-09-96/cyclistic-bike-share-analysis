-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Step 2: Clean data and create analysis-ready table
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================
-- Cleaning steps applied:
--   1. Remove rows with NULL values in essential fields
--   2. Filter out rides < 1 minute (system errors/stalled bikes)
--   3. Filter out rides > 1440 minutes / 24 hours (extreme outliers)
--   4. Rename member_casual to membership for clarity
--   5. Add derived time-based features for behavioral analysis
-- =============================================================

CREATE TABLE cyclistic_bike_share.cleaned_data AS

SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  end_station_name,

  -- Rename for clarity
  member_casual AS membership,

  -- Derived Feature 1: Ride length in minutes
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_minutes,

  -- Derived Feature 2: Day of week (numeric 1=Sunday, 7=Saturday in BigQuery)
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,

  -- Derived Feature 3: Day name (e.g., Monday, Tuesday)
  FORMAT_TIMESTAMP('%A', started_at) AS day_name,

  -- Derived Feature 4: Month number (1–12)
  EXTRACT(MONTH FROM started_at) AS month,

  -- Derived Feature 5: Month name (e.g., January, February)
  FORMAT_TIMESTAMP('%B', started_at) AS month_name

FROM cyclistic_bike_share.full_year_data

WHERE
  -- Remove unrealistic ride durations
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 1
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) < 1440

  -- Remove rows with NULL values in essential fields
  AND started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND member_casual IS NOT NULL
  AND start_station_name IS NOT NULL
  AND end_station_name IS NOT NULL
  AND ride_id IS NOT NULL;

-- Result: A fully cleaned, enriched dataset ready for analysis
