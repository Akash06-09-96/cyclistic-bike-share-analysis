-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Finding 2: Total rides by day of week and membership type
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================
-- Insight: Annual members peak Monday–Thursday (commuting pattern).
--          Casual riders peak Saturday–Sunday (weekend leisure pattern).
--          Saturday is the only day where both groups nearly converge.
-- =============================================================

SELECT
  day_name,
  membership,
  COUNT(*) AS total_rides

FROM cyclistic_bike_share.cleaned_data

GROUP BY day_name, membership

ORDER BY
  CASE day_name
    WHEN 'Monday'    THEN 1
    WHEN 'Tuesday'   THEN 2
    WHEN 'Wednesday' THEN 3
    WHEN 'Thursday'  THEN 4
    WHEN 'Friday'    THEN 5
    WHEN 'Saturday'  THEN 6
    WHEN 'Sunday'    THEN 7
  END,
  membership;

-- Results:
-- | Day       | Casual  | Member  |
-- |-----------|---------|---------|
-- | Monday    | 151,566 | 337,380 |
-- | Tuesday   | 145,747 | 372,028 |
-- | Wednesday | 140,092 | 359,237 |
-- | Thursday  | 163,031 | 370,920 |
-- | Friday    | 206,243 | 337,478 |
-- | Saturday  | 269,199 | 276,658 | <- Groups nearly converge
-- | Sunday    | 218,570 | 243,104 |
