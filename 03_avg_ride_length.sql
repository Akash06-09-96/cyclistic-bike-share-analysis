-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Finding 1: Average ride length by membership type
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================
-- Insight: Casual riders average 22.21 min vs members at 12.18 min
--          Casual riders take rides nearly TWICE as long as members,
--          suggesting leisure/recreational use vs. purposeful commuting.
-- =============================================================

SELECT
  membership,
  ROUND(AVG(ride_length_minutes), 2) AS avg_ride_length

FROM cyclistic_bike_share.cleaned_data

GROUP BY membership;

-- Results:
-- | Membership | Avg Ride Length |
-- |------------|----------------|
-- | casual     | 22.21 minutes  |
-- | member     | 12.18 minutes  |
