### Google Data Analytics Certificate — Capstone Case Study

**Author:** Akash Kaliramna  
**Date:** June 2026  
**Tools Used:** BigQuery (SQL) · Tableau Public 

---

## 📌 Project Overview

This is the capstone case study for the **Google Data Analytics Professional Certificate**. I took on the role of a junior data analyst at **Cyclistic**, a fictional bike-share company based in Chicago. The goal was to analyze how annual members and casual riders use Cyclistic bikes differently, and to provide data-driven marketing recommendations to convert casual riders into annual members.

---

## ❓ Business Task

> **How do annual members and casual riders use Cyclistic bikes differently?**

The marketing director believes the company's future growth depends on maximizing annual memberships. My task was to identify behavioral differences between the casual and member rider groups so the marketing team can design targeted campaigns to drive conversion from casual to member.

**Key Stakeholders:**
- Lily Moreno — Director of Marketing
- Cyclistic Marketing Analytics Team
- Cyclistic Executive Team

---

## 📂 Repository Structure

```
cyclistic-bike-share-analysis/
│
├── README.md                        ← You are here — project overview & findings
├── Case_Study_Complete.docx         ← Full detailed report (all 6 phases)
│
├── sql/
│   ├── 01_combine_data.sql          ← UNION ALL: merging 12 monthly tables
│   ├── 02_clean_data.sql            ← Creating cleaned_data with filters & features
│   ├── 03_avg_ride_length.sql       ← Finding 1: Avg ride duration by membership
│   ├── 04_rides_by_day.sql          ← Finding 2: Rides by day of week
│   ├── 05_rides_by_month.sql        ← Finding 3: Monthly/seasonal trends
│   ├── 06_bike_type.sql             ← Finding 4: Bike type preference
│   └── 07_top_stations.sql          ← Finding 5: Top stations by membership type
```

---

## 🗄️ Data Source

- **Source:** [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html) (publicly available, licensed by Lyft Bikes and Scooters, LLC / City of Chicago)
- **Period Covered:** January 2025 – December 2025 (12 months, full year)
- **Total Rows:** 5.5+ million ride records
- **Key Column:** `member_casual` — identifies whether a rider is a casual rider or annual member

The data follows the **ROCCC** framework: Reliable, Original, Comprehensive, Current, and Cited. No personally identifiable information is included.

---

## 🛠️ Tools & Workflow

| Phase | Tool | Purpose |
|-------|------|---------|
| Prepare | BigQuery (SQL) | Uploading and organizing 12 CSV files into dataset |
| Process | BigQuery (SQL) | Combining, cleaning, and feature engineering |
| Analyze | BigQuery (SQL) | Querying 5 key behavioral dimensions |
| Share | Tableau Public | Building interactive dashboard from exported CSVs |
| Act | — | Marketing recommendations based on findings |

> **Why BigQuery?** The combined dataset exceeds 5.5 million rows — far too large for Excel or Google Sheets. Some monthly files (June–October) exceeded BigQuery's 100MB upload limit and were split using Mac Terminal before being appended in BigQuery.

---

## 🔍 Key Findings

### Finding 1 — Casual Riders Take Longer Rides
| Membership | Avg Ride Length |
|------------|----------------|
| Casual | **22.21 minutes** |
| Member | **12.18 minutes** |

Casual riders take rides nearly **twice as long** as annual members, suggesting leisure and recreational use vs. purposeful commuting.

---

### Finding 2 — Members Ride on Weekdays, Casuals Peak on Weekends
| Day | Casual Rides | Member Rides |
|-----|-------------|-------------|
| Monday | 151,566 | 337,380 |
| Tuesday | 145,747 | 372,028 |
| Wednesday | 140,092 | 359,237 |
| Thursday | 163,031 | 370,920 |
| Friday | 206,243 | 337,478 |
| **Saturday** | **269,199** | 276,658 |
| **Sunday** | **218,570** | 243,104 |

Saturday is the only day where casual and member ride counts nearly converge — confirming casual riders are **weekend leisure users** while members are **weekday commuters**.

---

### Finding 3 — Casual Ridership is Highly Seasonal
Casual rides in August (216,515) are nearly **13× higher** than in January (16,678). Members maintain consistent year-round ridership, even in winter. This creates a clear marketing window: **target casual riders in May before summer peaks**.

---

### Finding 4 — Both Groups Prefer Classic Bikes
| Bike Type | Casual | Member |
|-----------|--------|--------|
| Classic Bike | 659,882 (51%) | 1,241,327 (54%) |
| Electric Bike | 634,566 (49%) | 1,055,478 (46%) |

Casual riders show a slightly higher proportional preference for electric bikes — consistent with longer, more relaxed leisure rides.

---

### Finding 5 — Different Stations Reveal Different Purposes
**Top Casual Stations** (tourist/leisure landmarks): Navy Pier, DuSable Lake Shore Dr, Streeter Dr & Grand Ave, Michigan Ave & Oak St  
**Top Member Stations** (business/transit hubs): Kingsbury St & Kinzie St, Clinton St & Washington Blvd, Canal St & Madison St

The geographic divide confirms: **casuals ride for fun, members ride for work**.

---

## 📊 Tableau Dashboard

The interactive dashboard was built in Tableau Public using 5 exported CSV summary files from BigQuery. It includes:
- Average Ride Length (Bar Chart)
- Rides by Day of Week (Grouped Bar Chart)
- Monthly Ride Trends (Line Chart)
- Bike Type Preference (Grouped Bar Chart)
- Top Stations by Membership Type (Horizontal Bar Chart)

**Consistent color coding:** 🟠 Orange = Casual Riders · 🔵 Blue = Annual Members

### View Interactive Dashboard on Tableau Public:-
(https://public.tableau.com/authoring/CyclisticCaseStudy_17823563465840/Sheet6/Dashboard%201#1)

---

## 💡 Top 3 Recommendations

**1. Launch a Summer Membership Campaign**  
Target casual riders in May with a discounted annual membership offer, promoted at top casual stations (Navy Pier, Millennium Park, DuSable Lake Shore Drive) when summer engagement is at its peak.

**2. Introduce a Weekend Membership Tier**  
Create a lower-priced membership covering unlimited Saturday–Sunday rides. This removes the price barrier for casual weekend users and creates a natural stepping stone toward full annual membership.

**3. Show Casual Riders Their Costs in Real Time**  
Use in-app notifications and station signage to display a live cost comparison — "You've ridden 20 minutes today. As a member, this ride would cost you X less." This personalized message directly addresses the financial case for converting high-duration casual riders.

---

## 📄 Full Report

For the complete analysis including all methodology details, SQL queries with results, and Tableau build steps, see [`Case_Study_Complete.docx`](./Case_Study_Complete.docx).

---

## 👤 About

**Akash Kaliramna**  
Google Data Analytics Certificate (2026)  
Skills: SQL · BigQuery · Tableau · Data Cleaning · Data Visualization · Business Insights
