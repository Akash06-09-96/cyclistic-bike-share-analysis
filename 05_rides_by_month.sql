-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Finding 3: Total rides by month and membership type (seasonal trends)
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================
-- Insight: Casual ridership is extremely seasonal — August casual rides
--          (216,515) are nearly 13x higher than January (16,678).
--          Members maintain consistent year-round ridership.
--          Best marketing window: May, just before summer peak.
-- =============================================================

SELECT
  month_name,
  month,
  membership,
  COUNT(*) AS total_rides

FROM cyclistic_bike_share.cleaned_data

GROUP BY month_name, month, membership

ORDER BY month;

-- Results:
-- | Month     | Casual  | Member  |
-- |-----------|---------|---------|
-- | January   |  16,678 |  81,132 |
-- | February  |  19,202 |  86,657 |
-- | March     |  60,293 | 143,032 |
-- | April     |  75,389 | 175,762 |
-- | May       | 123,086 | 208,431 |
-- | June      | 188,958 | 246,628 |
-- | July      | 204,026 | 277,364 |
-- | August    | 216,515 | 285,825 | <- Peak casual month
-- | September | 168,757 | 286,851 |
-- | October   | 140,497 | 265,803 |
-- | November  |  62,741 | 164,972 |
-- | December  |  18,306 |  74,348 |
