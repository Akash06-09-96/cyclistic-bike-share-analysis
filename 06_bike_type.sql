-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Finding 4: Total rides by bike type and membership type
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================
-- Insight: Both groups prefer classic bikes, but casual riders show a
--          slightly higher proportional preference for electric bikes
--          (49% vs 46%), consistent with longer leisure rides.
-- =============================================================

SELECT
  rideable_type,
  membership,
  COUNT(*) AS total_rides

FROM cyclistic_bike_share.cleaned_data

GROUP BY rideable_type, membership;

-- Results:
-- | Bike Type     | Casual    | Member    |
-- |---------------|-----------|-----------|
-- | classic_bike  | 659,882   | 1,241,327 |
-- | electric_bike | 634,566   | 1,055,478 |
--
-- Casual split: 51% classic / 49% electric
-- Member split: 54% classic / 46% electric
