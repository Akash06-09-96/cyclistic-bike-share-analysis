-- =============================================================
-- Cyclistic Bike-Share Analysis | Google Data Analytics Capstone
-- Finding 5: Top 20 start stations by membership type
-- Tool: BigQuery
-- Author: Akash Kaliramna | June 2026
-- =============================================================
-- Insight: Casual riders cluster around tourist/leisure landmarks
--          (Navy Pier, DuSable Lake Shore Dr, Michigan Ave & Oak St).
--          Members concentrate at business/transit hubs
--          (Kingsbury St, Clinton St, Canal St, Clark St).
--          This geographic divide confirms the core behavioral difference:
--          casuals ride for fun, members ride for work.
-- =============================================================

SELECT
  start_station_name,
  membership,
  COUNT(*) AS total_rides

FROM cyclistic_bike_share.cleaned_data

GROUP BY start_station_name, membership

ORDER BY total_rides DESC

LIMIT 20;

-- Top 10 Results:
-- | Station                              | Membership | Total Rides |
-- |--------------------------------------|------------|-------------|
-- | DuSable Lake Shore Dr & Monroe St    | casual     | 28,119      |
-- | Kingsbury St & Kinzie St             | member     | 26,223      |
-- | Navy Pier                            | casual     | 24,359      |
-- | Clinton St & Washington Blvd         | member     | 21,572      |
-- | Streeter Dr & Grand Ave              | casual     | 21,391      |
-- | Michigan Ave & Oak St                | casual     | 19,774      |
-- | Canal St & Madison St                | member     | 18,757      |
-- | Clinton St & Madison St              | member     | 18,596      |
-- | Clark St & Elm St                    | member     | 17,563      |
-- | DuSable Lake Shore Dr & North Blvd   | casual     | 17,105      |
